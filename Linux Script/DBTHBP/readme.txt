algorithm文件夹中的next_choose.tcl文件是利用DBTHBP协议选择下任中继节点的过程。
IEEE802_11p文件夹中的IEEE802_11p.tcl文件包含的是802.11p的一些默认参数配置。
java文件夹下的Random.java文件是用于随机生成节点初始位置，速度的。
sim_scene文件夹中的文件是仿真DBTHBP协议时具体使用到的仿真场景，如节点个数，节点的配置情况等等，此外，后缀名为tr的文件是不同情况下ns2软件记录的网络数据。
data_analysis文件夹中包含7个文件夹，其中cover、delay、jitter、reduncy、repeat_area、throughput文件夹中包含的awk文件分别是用于分析网络覆盖率、延迟、抖动率、冗余率、重复区域、吞吐量的文件，sh文件夹中包含的sh脚本是用于批量执行awk程序提取相关数据以及用gnuplot软件绘图的。
random_initial_data文件夹中的文件是用java小程序随机生成的关于节点速度，位置等相关的文件。
tool文件夹中的threshold文件是用来计算能量模型和无线发射圈半径关系的工具。
make.sh文件是为简化在终端下逐条输入命令而编写的一个脚本，包括编译并执行java源代码，DBTHBP协议的编译，数据分析以及绘图等。
