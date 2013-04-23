BEGIN {
	num = 0;#含重复的接收节点总数
	temp = -1;#用于标识是否发送完毕
	#存放各节点信息
	for (i = 0; i < 3000; i++) {
		X[i] = 0;
		V[i] = 0;
	}
}
{
	event = $1;#第1个字段$1标识事件的类型
	time = $2;#第2个字段$2标识事件发生的时间
	node = $3;#第3个字段$3标识事件发生所在的节点
	node_ = substr(node, 2, 4);#获取节点号
	trace_type = $4;#第4个字段$4标识事件发生所在的网络层面
	flag = $5;#第5个字段$5是标志项
	uid = $6;#第6个字段$6标识分组的uid
	pkt_type = $7;#第7个字段$7标识分组的类型
	pkt_size = $8;#第8个字段$8标识分组的大小

	if (trace_type != "AGT") {
		X[$3] = substr($4, 2, 7);
		V[$3] = $9;
	}

	if (event == "s" && node_ != temp){
		temp = node_;
		num++;
	}
}
END {
	printf("3000\t%.2f\n", (num * 600 - (num * V[temp] + X[temp] + 300)) / (num * V[temp] + X[temp] + 300) * 100);
}
