预设用户数据区说明
1.功能
  预设用户数据区数据。在phone memory上预装目录和文件，且缩短第一次开机的系统启动时间。

2.方法概述
在phone memory 上建立需要预设的目录和文件，之后dump用户数据区生成user_data.lod,用coolwatch处理user_data.lod。 处理后的user_data lod既可以直接downlod到手机上，也可以将其与代码lod合并后downlod到手机，两种方式可以达到预设用户数据区的目的。

3.操作步骤
3.1.准备工作
1)向T卡拷贝预设文件,将T卡插入手机。
2)将手机中的sim卡全部取出。这样做防止系统启动后向用户数据区写入sim卡相关的信息。

3.2.擦除用户数据区
1)下载代码lod完成后,重启过程在coolwatch命令行执行xfbp,选择下载擦除用户数据区的lod进行下载。
2)下载完擦除用户数据的lod后，系统自动重启。

3.3.创建预设数据
1)系统启动到idle界面后，进入 File Mange

2)在phone memory上创建目录,如果目录已经存在，则可跳过这一步。

3)从T卡上将预设文件拷贝到 phone memory下指定的目录中

(如果手机具备Phone USB功能，可以使用电脑向Phone USB分区上拷贝目录和文件)

3.4.Dump用户数据区
1)连接好dongle线。
2)在Idle且亮屏状态下，coolwatch 命令行运行 xfbp.
3) 执行dump命令： 
a) greestone:
   
   dump("user_data.lod",base_addr,size);
   
   base_addr ＝ USER_DATA_BASE | 0x01000000
   size = USER_DATA_SIZE/4
   
b) gallite:
   dump("user_data.lod",base_addr,size);
   
   base_addr ＝ USER_DATA_BASE | 0x02000000
   size = USER_DATA_SIZE/4
   
   
   Example:
   
   memd.def:
   
   USER_DATA_BASE:=        0x00700000
   USER_DATA_SIZE:=        0x00e0000
   
   greestone:
   dump("user_data.lod",0x01700000,0x38000);
   
   gallite:
   dump("user_data.lod",0x02700000,0x38000);
   
命令执行成功后会在coolwatch所在的目录下生成文件user_data.lod.
注意：dump1MB数据需要花费20分钟左右的时间，当dongle灯不闪烁了， 可以在coolwatch 命令行尝试运行 r 0 如果r 0能正常执行，证明dump完成。否则，就只有耐心等待。
   
 3.5.处理user_data.lod
1)点击coolwatch菜单plugins->User data convert tool，打开User data convert tool子窗口。
2)选择Source File。
3)设定Destination path。
5)点击Convert。   
6)在Destination path文件夹下会生成目标文件。如：usr_data_0158_dest.lod。
如果coolwatch的plugins下没有子菜单User data convert tool，可以将附件中的userdatatool子目录拷贝到“CSDTK/cooltools/rbbase/common/plugins/” 下且重新启动coolwatch即可出现该子菜单。

3.6.连接文件   将目标文件连接到代码lod之后，这样就完成了预设用户数据区的所有准备工作。这一步可以使用具有连接文件功能的工具来完成，也可以使用普通的纯文本编辑工具（如UltraEdit）通过拷贝、粘贴来完成。
   
4.验证
假设连接后的文件为：code_user_data.lod   
4.1 downlod code_user_data.lod.   
4.2 downlod 完成之后，如果系统第一次启动比较快，且在文件管理中能看到预设的目录和文件， 则说明预设成功。
   
   
   
   
   

 
 
 