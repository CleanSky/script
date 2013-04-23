BEGIN {
	highest_uid = 0;#highest_uid会保存已处理过的分组中最大的uid
	for (i = 0; i < 500; i++){
		end_time[i] = 0;
		count[i] = 0;
	}
}
{
	event = $1;#第1个字段$1标识事件的类型
	time = $2;#第2个字段$2标识事件发生的时间
	node = $3;#第3个字段$3标识事件发生所在的节点
	node_ = substr(node, 2, 1);#获取节点号
	trace_type = $4;#第4个字段$4标识事件发生所在的网络层面
	flag = $5;#第5个字段$5是标志项
	uid = $6;#第6个字段$6标识分组的uid
	pkt_type = $7;#第7个字段$7标识分组的类型
	pkt_size = $8;#第8个字段$8标识分组的大小

	if (event == "s" && trace_type == "AGT" && pkt_type == "PBC")#保存发送分组的时间
		start_time[uid] = time;
	if (event == "r" && pkt_type == "PBC"){#保存接收分组的时间
		end_time[uid] += time;
		count[uid] += 1;
	}

	if (highest_uid < uid)
		highest_uid = uid;#更新highest_uid的值
}
END {
	for (i = 0; i <= highest_uid; i++) {
		start = start_time[i];
		end = end_time[i] / count[i];
		delay = end - start;#计算分组的延迟时间
		if (start < end)
			printf("%f %f\n", start, delay);#打印源节点和目的节点之间发送的分组及分组的延迟时间
	}
}
