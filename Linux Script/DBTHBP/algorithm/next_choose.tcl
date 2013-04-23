proc next_choose {N X} {
	global ns_ val agent_ X_ V_ radius power_time;#全局变量
	set max_distance 0;#记录最大距离
	set flag1 $N;#过渡中继节点序号
	set flag2 $N;#下任中继节点序号
	set success 0

	#第一次选择过渡节点
	for {set i 0} {$i < $val(nn)} {incr i 1} {
		#节点Ｘ方向位置在中继节点发射圈内部且超过中继节点
		if {($X_($i) > $X) && ($X_($i) <= [expr $X+$radius]) && ($max_distance < [expr $X_($i)-$X])} {
			set max_distance [expr $X_($i)-$X]
			set flag1 $i
		}
	}

	set max_distance 0;#重置max_distance

	#第二次选择下任中继节点
	for {set i 0} {$i < $val(nn)} {incr i 1} {
		#节点Ｘ方向位置在中继节点发射圈内部且超过中继节点
		if {($X_($i) > $X_($flag1)) && ($X_($i) <= [expr $X_($flag1)+$radius]) && ($max_distance < [expr $X_($i)-$X_($flag1)])} {
			set max_distance [expr $X_($i)-$X_($flag1)]
			set flag2 $i
			set success 1
		}
	}

	#中继选举成功
	if {$success == 1} {
		puts "过渡中继节点：$flag1"
		puts "下任中继节点：$flag2"
		set power_time [expr $power_time+1]
		$ns_ at $power_time.01 "$agent_($N) PeriodicBroadcast ON"
		$ns_ at $power_time.03 "$agent_($flag2) PeriodicBroadcast ON;$agent_($N) PeriodicBroadcast OFF"
		return $flag2
	} else {
		puts "过渡中继节点：$N"
		puts "下任中继节点：$N"
		return $N
	}
}
