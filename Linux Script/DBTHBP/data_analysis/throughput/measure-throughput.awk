BEGIN {
	highest_uid = 0;
	number = 0;
	for (k = 0; k < 500; k++) {
		end_time[k] = 0;
		count[k] = 0;
		pkt_byte_sum[k] = 0;
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

	if (event == "r" && pkt_type == "PBC"){#保存接收分组的时间
		end_time[uid] += time;
		count[uid] += 1;
		pkt_byte_sum[uid] += pkt_size - 20;
	}

	if (highest_uid < uid)
		highest_uid = uid;
}
END {
	for (k = 0; k <= highest_uid; k++) {
		end_time[k] /= count[k];
	}
	#为了画图好看，把第一条记录的吞吐量设为0,以表示传输开始
	start_time = 0;
	pkt_byte_sum_total = 0;
	printf("%.2f\t%.2f\n", start_time, 0);
	for (k = 0; k <= highest_uid; k++) {
		pkt_byte_sum_total += pkt_byte_sum[k];
		th = pkt_byte_sum_total / (end_time[k] - start_time) * 8 / 1000;#计算吞吐量
		printf("%.2f\t%.2f\n", end_time[k], th);
	}
}

