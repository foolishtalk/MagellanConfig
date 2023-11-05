# Magellan启动配置文件


| type | title | message | confirmTitle | cancelTitle | url | bannerId | 打开时机 | 
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| 2 | ✅ | ✅ | ✅ | ✅ | ✅ | ❌ | 点击公告 |
| 3 | ✅ | ✅ | ✅ | ✅ | ❌ | ✅ | 首次显示公告 & 点击公告 & 提醒升级 |
| 4 | ✅ | ✅ | ✅ | ✅ | ❌ | ✅ | 每次启动 & 点击公告 & 强制升级 |
| 5 | ✅ | ✅ | ✅ | ✅ | ❌ | ✅ | 首次显示公告 & 点击公告 |
| 6 | ✅ | ✅ | ✅ | ✅ | ❌ | ✅ | 每次启动 & 点击公告 |
| other | ✅ | ✅ | ❌ | ❌ | ❌ | ❌ | 点击公告 |



```

{
  "type": 2,
  "title": "",
  "message": "最新版本为 1.4.3 \n重要！！！\n1. 修复修改定位异常时 Magellan 崩溃的问题；\n 2. 优化驱动安装流程;",
  "confirmTitle": "前往下载",
  "cancelTitle": "取消",
  "version": "1.4.3",
  "banner_id": 17
}
```

# mocklocation.json配置


```
{
  "version": "3.14",
  "launch_id": 51,
  "magellan_version": "2.3.0",// 当前Magellan最新版本，如果不填，虚拟定位不会提示更新Magellan
  "magellan_release_note_en": "",// Magellan更新提示的文案 英文版
  "magellan_release_note_zh": ""// Magellan更新提示的文案 中文版
}
```