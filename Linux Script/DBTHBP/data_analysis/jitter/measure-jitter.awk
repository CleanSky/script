BEGIN {
	highest_uid = 0;#highest_uid会保存已处理过的分组中最大的uid
	for (i = 0; i < 500; i++) {
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

		if (start < end)
			delay[i] = end - start;#用一个数组保存每个分组的延迟时间
	}

	last_delay = 0;#last_delay用于保存上一个分组的延迟
	last_seqno = 0;
	for (i = 0; i <= highest_uid; i++) {
		if (delay[i] != 0) {
			if (last_delay == 0) {
				jitter = 0; #第一个抖动为0
			} else {
				jitter = (delay[i] - last_delay) / (i - last_seqno) * 100;#从第二个分组延迟开始计算抖动
			}
			printf("%d %.8f\n", start_time[i], jitter);#打印延迟抖动信息
			last_delay = delay[i];
			last_seqno = i;
		}
	}
}

