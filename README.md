Hackintosh-thinkpad-e490 i5 8265U HD620

  基本完美黑苹果，基于@黑果小兵 的10.15.1 5098版，请自行下载。 [链接](https://blog.daliansky.net/macOS-Catalina-10.15.1-19B88-Release-version-with-Clover-5098-original-image-Double-EFI-Version.html)

    完美睡眠，CPU睿频正常，屏蔽独显，集成显卡驱动正常，HDMI可以外接显示器，屏幕可以调节亮度
  
    声卡简单注入 15，耳机孔蓝牙耳机有声音
  
    正常显示电量，CPU温度
  
    无线网卡换的的黑果小兵的 DW1820A，隔空投送，接力都可用

存在的问题

    HDMI音频没有驱动，内置扬声器无法输出

    小红点不能用，可以删除 ApplePS2SmartTouchPad.kext 换回 VoodooPS2Controller_v1.9.2.kext解决

    风扇转速不能获取

显卡仿冒
    显卡显示为3EA0，仿冒的3EA5

HDMI外接显示器
    使用Hackintool 仿冒显卡测试接口，有时显示06，下面的描述是04，点一下06就能修改。
    教程链接
EDID Manager 找到显示器edid，格式手动改成8个字符一个空格分隔就行。
    E490内建显示器EDID：
    00FFFFFF FFFFFF00 0DAED414 00000000 241A0104 A51F1178 02286597 59548E27 1E505400 00000101 01010101 01010101 01010101 0101B43B 804A7138 3440503C 680035AD 10000018 000000FE 004E3134 30484341 2D454143 0A200000 00FE0043 4D4E0A20 20202020 20202020 000000FE 004E3134 30484341 2D454143 0A200005 

亮度调节
使用的 ，我直接开到最大，貌似亮度上限不够

声卡仿冒 id 15, 不能静音

DSDT反编译
目前没用做DSDT修复，反编译中的一些坑分享一下。
请使用iasl 6.1版本做反编译，其他版本反编译不成功。有时候SSDT中有覆盖会DSDT中的一些设置，这是正常的，但是联合反编译的时候回出现变量已存在的问题。这时候需要把SSDT中冲突的项先更名，编译之后再做反编译。
比如
反编译成功之后，DSDT会有一些错误，可以先打开MaciASL，默认会加载System DSDT，在System DSDT找到相同的位置，大概率会找到正确代码。本人实践，解决了所有错误。因为找到了Hotpatch的方案，未做深入研究。

无线网卡 蓝牙
改用DW1820A，直接支持不需要特殊设置，所有功能可以。
蓝牙驱动使用原版，不是10.15专用版

[如何拆机](https://baijiahao.baidu.com/s?id=1591008840684960322)，呵呵

触摸板手势

电池电量


深度睡眠
目前完美睡眠，请谨慎升级lilu.kext wharevergreen.kext, 升级后可能影响睡眠

USB内建
教程

删除window recovery分区造成window不能正常引导的修复
    windows默认EFI分区是FAT16格式，需要改成FAT32，recovery分区没用基本会删除，合并到EFI里去，这样会让

NTFS EXT4 文件读写
    请关闭Windows 快速启动，所谓快速启动就是内存保存到硬盘的睡眠，会让NTFS分区只读挂载。
    [教程链接](https://zhih.me/macos-mount-ntfs-ext/)
