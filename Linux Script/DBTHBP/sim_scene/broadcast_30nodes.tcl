# 广播的时间间隔

source "../IEEE802_11p/IEEE802_11p.tcl";#802.11p协议默认设置 

set val(chan)       Channel/WirelessChannel;#物理信道类型是无线信道
set val(prop)       Propagation/TwoRayGround;#无线传输模型是TwoRayGround
set val(netif)      Phy/WirelessPhyExt;#网络接口类型是无线物理层的扩展
set val(mac)        Mac/802_11Ext;#MAC层协议采用802.11协议的扩展
set val(ifq)        Queue/DropTail/PriQueue;#接口队列类型是IFQ队列
set val(ll)         LL;#逻辑链路层类型是LL层
set val(ant)        Antenna/OmniAntenna;#天线模型是全向天线
set val(x)          10000;#拓扑范围的长度
set val(y)          20;#拓扑范围的宽度
set val(ifqlen)     50;#网络接口队列的大小为50
set val(rtg)        AODV;#无线路由协议
set val(stop)       30;#仿真时间
set val(nn)         900;#无线节点个数
set radius			300;#节点通信半径为300m
set power_node		0;#原中继节点
set power_time		0;#中继交接时刻

set ns_		[new Simulator];#建立一个模拟实例
set topo	[new Topography];#建立一个拓扑对象
set tracefd	[open broadcast_30nodes.tr w];#开启Trace跟踪文件
$ns_ trace-all $tracefd

$topo load_flatgrid $val(x) $val(y);#拓扑范围创建
set god_ [create-god $val(nn)]
$god_ off

set chan [new $val(chan)];#创建物理信道对象
#配置无线节点
$ns_ node-config -adhocRouting $val(rtg) \
                 -llType $val(ll) \
                 -macType $val(mac) \
                 -ifqType $val(ifq) \
                 -ifqLen $val(ifqlen) \
                 -antType $val(ant) \
                 -propType $val(prop) \
                 -phyType $val(netif) \
                 -channel $chan \
		         -topoInstance $topo \
		         -agentTrace ON \
                 -routerTrace OFF \
                 -macTrace OFF \
                 -phyTrace OFF

source "../random_initial_data/nodes_30nodes.txt";#节点的创建
source "../random_initial_data/location_30nodes.txt";#节点位置
source "../random_initial_data/speed_30nodes.txt";#节点运动速度
source "../algorithm/next_choose.tcl";#下任中继节点选择

for {set i 0} {$i < $val(nn)} {incr i} {
    set agent_($i) [new Agent/PBC];#新建代理
    $ns_ attach-agent $vehicle_($i) $agent_($i);#代理绑定
    $agent_($i) set Pt_ 1e-4;#消息产生频率
    $agent_($i) set payloadSize 1000;#MAC帧的大小
    $agent_($i) set periodicBroadcastInterval 1
    $agent_($i) set periodicBroadcastVariance 0.05
    $agent_($i) set modulationScheme 1;#默认的帧调制机制，0是BPSK
    $agent_($i) PeriodicBroadcast OFF;#广播代理关闭
    $ns_ at $val(stop).0 "$vehicle_($i) reset";#仿真结束时节点复位
}

#中继节点的选择过程
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]
set power_node [next_choose $power_node $X_($power_node)]

$ns_ at $val(stop).0002 "puts \"NS EXITING...\" ; $ns_ halt";#仿真结束
$ns_ at $val(stop).0003 "$ns_ flush-trace;close $tracefd";#跟踪文件
puts "Starting Simulation...";#提示信息输出
$ns_ run;#执行模拟

