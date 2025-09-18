#!/bin/sh
set -e

# 检查参数
if [ -z "$1" ]; then
    echo "使用方法: $0 <commit_message>"
    exit 1
fi

# 确保目标目录存在
TARGET_DIR="../MagellanConfig_fast"
if [ ! -d "$TARGET_DIR" ]; then
    echo "错误: 目标目录 $TARGET_DIR 不存在"
    exit 1
fi

# 复制文件 (排除不需要的文件)
echo "正在同步文件到 $TARGET_DIR..."
rsync -av --exclude='*.dmg' --exclude='*.pkg' --exclude='.git' . "$TARGET_DIR/"

# 切换到目标目录
cd "$TARGET_DIR"

# 安全地删除文件 (如果存在)
[ -f "magellan.dmg" ] && rm "magellan.dmg"
[ -f "magellan.pkg" ] && rm "magellan.pkg"

# 只添加已修改的文件，不添加新的未跟踪文件
git add -u

# 提交变更 (使用引号保护提交信息)
git commit -m "$1"

# 推送 (假设 gpush 是您的别名，否则改为 git push)
if command -v gpush >/dev/null 2>&1; then
    gpush
else
    git push
fi

echo "同步完成！"