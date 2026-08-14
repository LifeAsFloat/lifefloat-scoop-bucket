# lifefloat-scoop-bucket

个人维护的 [Scoop](https://scoop.sh/) 应用仓库（bucket），收录常用软件、中文本地化（`-cn`）及镜像版应用。部分清单带有自定义安装脚本（文件关联、右键菜单、注册表清理、数据目录持久化等）。

## 安装

添加本仓库（Git 方式）：

```powershell
scoop bucket add lifefloat-scoop-bucket https://github.com/LifeAsFloat/lifefloat-scoop-bucket.git
```

搜索并安装应用：

```powershell
scoop search typora-cn
scoop install lifefloat-scoop-bucket/typora-cn
```

部分应用（如 `dotnet-scoop`）需要管理员权限进行全局安装：

```powershell
sudo scoop install -g lifefloat-scoop-bucket/dotnet-scoop
```

## 应用清单

共收录 98 个应用：

| 应用 | 说明 |
| --- | --- |
| activitiywatch | Open-source automated time tracker |
| adrive | 阿里云盘，速度快、不打扰、够安全、易于分享的网盘 |
| Alas | Azur Lane Auto Script - 碧蓝航线自动化脚本工具 |
| autodarkmode | 定时在 Windows 深色 / 浅色主题之间切换 |
| B0pass | 极简、跨平台的纯本地密码管理工具 |
| baidunetdisk | 百度网盘 PC 版 |
| blender-cn | 3D creation suite |
| bongocat | A cute animated cat that sits on your desktop and reacts to your keyboard. |
| cajviewer | CAJViewer |
| CCompare | A code synchronization and comparison tool that can be used for free. |
| clash-for-windows | A Windows GUI based on Clash |
| clashmi | ClashMI - A tool for managing network proxy settings. |
| cnkiexpress | 全球学术快报 for Windows |
| cursor | 集成了 GPT-4 的代码编辑器，可快速编写、修改和讨论代码 |
| DatabaseNet | Innovative, powerful and intuitive multiple database management tool |
| dingtalk | 钉钉 - 一站式免费沟通协作平台 |
| diskgenius-cn | 数据恢复、磁盘分区管理、备份与恢复工具 |
| dotnet-default | Microsoft .NET Framework 10.0.100 Developer Pack |
| dotnet-scoop | Microsoft .NET Framework 10.0.100 Developer Pack（含注册表、数据目录处理脚本） |
| downkyi | DownKyi - bilibili 视频下载工具 |
| DskManager | 桌面图标网格化管理工具 |
| EasySpider | 基于 Python3 的强大、简单易用的网页爬虫框架 |
| edgeless | 强大而优雅的 PE 工具 |
| edrawmax | 集两百多种绘图于一身的综合图形图表设计软件 |
| eudic | 权威的英语词典软件，英语学习者必备 |
| feishu | Connect with teammates anytime and anywhere |
| file-converter | Various file converter and compressor |
| filecentipede | An internet file download manager |
| firefox-scoop | 由 Mozilla 基金会开发的自由开源网页浏览器 |
| freecad-cn | 自由开源的跨平台参数化 3D 建模软件 |
| gdiview | — |
| gimp-cn | GNU Image Manipulation Program |
| git-cn | 分布式版本控制系统 |
| IKUN-Music | 轻量音乐播放器，支持多种音频格式 |
| inkscape-cn | Professional vector graphics editor |
| julia-cn | 面向技术计算的新式编程语言 |
| kingdraw | 免费化学结构式绘制编辑工具 |
| libreoffice-cn | Powerful and free office suite, a successor to OpenOffice(.org). |
| lx-music | 基于 Electron 的音乐播放器 |
| lyx-cn | — |
| m3u8-downloader | 外语辅助阅读与翻译解决方案 |
| mambaforge-cn | A conda-forge distribution |
| marktext-cn | — |
| mendeley-desktop | — |
| miniconda-cn | A cross-platform, Python-agnostic binary package manager. |
| misakatranslator | — |
| mpv.net-cm | mpv.net_CM 是基于 mpv.net 上游的中文分支模组 |
| musicfree | A free, cross-platform music player |
| n-m3u8dl-re | Cross-Platform, modern and powerful stream downloader for MPD/M3U8/ISM |
| neteasemusic | 网易云音乐官方客户端 |
| netlogo | turtles, patches, and links for kids, teachers, and scientists |
| nofences | 桌面图标组织管理工具 |
| notepad-- | 轻量高效的 notepad++ 替代品（含右键菜单安装脚本） |
| obs-studio-cn | 视频录制与直播软件 |
| octave-cn | 主要用于数值计算的高级语言 |
| Onlywrite | A minimal writing application |
| partition-assistant | — |
| phpstudy-lagecy-scoop | 为 Scoop 重新打包的 phpStudy2016 lagecy 精简版 |
| picgo | Image uploader/manager |
| picgo-beta | Image uploader/manager |
| piclist | 基于 PicGo 的图片上传与管理工具 |
| qq-nt | 腾讯 QQ NT（Electron 版） |
| QuickRedis | 永久免费的 Redis 可视化管理工具 |
| reader | A win32 txt/epub/online file reader |
| rectanglewin | macOS Rectangle.app 的 Windows 极简重写版 |
| regester | Testing and parsing regular expressions |
| sagemath-cn | Mathematics software system |
| see-yue-typora | 开源的优雅 Typora 主题 |
| spyder | The Scientific Python Development Environment. |
| steam | The ultimate entertainment platform. |
| steampp | Watt Toolkit - 集合大量 Steam 工具的工具箱 |
| subversion | Enterprise-class centralized version control for the masses. |
| tencent-edu | Online education platform by Tencent. |
| tencent-meeting | 腾讯会议 - 一站式音视频会议解决方案 |
| texlive | TeX Live - 跨平台、免费的 TeX 排版系统发行版 |
| texstudio-cn | An integrated writing environment for creating LaTeX documents. |
| tim | 腾讯轻量即时通讯软件 |
| ting-en | 学习英语必备的听力软件 |
| TotalUninstallPortable | — |
| typora-cn | 镜像下载的 Markdown 编辑器（含 See-Yue 主题建议） |
| typora-free | 极简 Markdown 编辑器 |
| utools | Your productive tools set and launcher. |
| veracrypt | 基于 TrueCrypt 的免费开源磁盘加密软件 |
| vlc-cn | 自由开源的跨平台多媒体播放器 |
| vmware-workstation-pro | VMware Workstation Pro for Windows |
| vscodium-cn | VS Code 无品牌标识 / 遥测 / 许可的二进制发行版 |
| VSTotalUninstaller | — |
| vtm | Terminal multiplexer with window manager and session sharing |
| weasel | — |
| Webdav | A simple and standalone WebDAV server. |
| wechatwork | 企业微信 |
| winrar | Powerful archive manager |
| Wireshark | 网络协议分析器 |
| wisecare365 | 清理注册表与垃圾文件、保护隐私、优化加速电脑 |
| wpsoffice-cn | 完整办公套件 |
| Xdiarys | 简单优雅的日历桌面工具 |
| yuque | 专业的笔记与知识库 |
| ZJU-Connect-for-Windows | 浙江大学 VPN 客户端 ZJU Connect for Windows |

> 说明：部分 `-cn` 应用为国内镜像 / 本地化版本；`gdiview`、`lyx-cn`、`marktext-cn`、`mendeley-desktop`、`misakatranslator`、`partition-assistant`、`TotalUninstallPortable`、`VSTotalUninstaller`、`weasel`、`B0pass` 等清单暂缺官方描述。

## 目录结构

```
bucket/         应用清单（JSON）
scripts/        安装 / 卸载辅助脚本
  Functions.ps1
  App_register/      应用注册（.reg）
  file_association/  文件关联（.reg）
  file_context_menu/ 右键菜单（.reg）
  Startup/
bin/            仓库维护脚本（checkver、checkurls、test 等）
test/           Pester 测试
```

## 相关链接

- [Scoop](https://scoop.sh/)
- [Scoop 安装与使用文档](https://github.com/ScoopInstaller/Scoop/wiki)

