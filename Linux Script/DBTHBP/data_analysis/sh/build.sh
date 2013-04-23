#!/bin/bash
#10nodes
awk -f ../delay/measure-delay.awk ../../sim_scene/broadcast_10nodes.tr > DBTHBP_delay_10nodes
awk -f ../cover/measure-cover_10nodes.awk ../../sim_scene/broadcast_10nodes.tr > DBTHBP_cover_10nodes
awk -f ../reduncy/measure-reduncy_10nodes.awk ../../sim_scene/broadcast_10nodes.tr > DBTHBP_reduncy_10nodes
awk -f ../repeat_area/measure-repeat_area_10nodes.awk ../../sim_scene/broadcast_10nodes.tr > DBTHBP_repeat_area_10nodes
awk -f ../jitter/measure-jitter.awk ../../sim_scene/broadcast_10nodes.tr > DBTHBP_jitter_10nodes
awk -f ../throughput/measure-throughput.awk ../../sim_scene/broadcast_10nodes.tr > DBTHBP_throughput_10nodes

#20nodes
awk -f ../delay/measure-delay.awk ../../sim_scene/broadcast_20nodes.tr > DBTHBP_delay_20nodes
awk -f ../cover/measure-cover_20nodes.awk ../../sim_scene/broadcast_20nodes.tr > DBTHBP_cover_20nodes
awk -f ../reduncy/measure-reduncy_20nodes.awk ../../sim_scene/broadcast_20nodes.tr > DBTHBP_reduncy_20nodes
awk -f ../repeat_area/measure-repeat_area_20nodes.awk ../../sim_scene/broadcast_20nodes.tr > DBTHBP_repeat_area_20nodes
awk -f ../jitter/measure-jitter.awk ../../sim_scene/broadcast_20nodes.tr > DBTHBP_jitter_20nodes
awk -f ../throughput/measure-throughput.awk ../../sim_scene/broadcast_20nodes.tr > DBTHBP_throughput_20nodes

#30nodes
awk -f ../delay/measure-delay.awk ../../sim_scene/broadcast_30nodes.tr > DBTHBP_delay_30nodes
awk -f ../cover/measure-cover_30nodes.awk ../../sim_scene/broadcast_30nodes.tr > DBTHBP_cover_30nodes
awk -f ../reduncy/measure-reduncy_30nodes.awk ../../sim_scene/broadcast_30nodes.tr > DBTHBP_reduncy_30nodes
awk -f ../repeat_area/measure-repeat_area_30nodes.awk ../../sim_scene/broadcast_30nodes.tr > DBTHBP_repeat_area_30nodes
awk -f ../jitter/measure-jitter.awk ../../sim_scene/broadcast_30nodes.tr > DBTHBP_jitter_30nodes
awk -f ../throughput/measure-throughput.awk ../../sim_scene/broadcast_30nodes.tr > DBTHBP_throughput_30nodes

#40nodes
awk -f ../delay/measure-delay.awk ../../sim_scene/broadcast_40nodes.tr > DBTHBP_delay_40nodes
awk -f ../cover/measure-cover_40nodes.awk ../../sim_scene/broadcast_40nodes.tr > DBTHBP_cover_40nodes
awk -f ../reduncy/measure-reduncy_40nodes.awk ../../sim_scene/broadcast_40nodes.tr > DBTHBP_reduncy_40nodes
awk -f ../repeat_area/measure-repeat_area_40nodes.awk ../../sim_scene/broadcast_40nodes.tr > DBTHBP_repeat_area_40nodes
awk -f ../jitter/measure-jitter.awk ../../sim_scene/broadcast_40nodes.tr > DBTHBP_jitter_40nodes
awk -f ../throughput/measure-throughput.awk ../../sim_scene/broadcast_40nodes.tr > DBTHBP_throughput_40nodes

#50nodes
awk -f ../delay/measure-delay.awk ../../sim_scene/broadcast_50nodes.tr > DBTHBP_delay_50nodes
awk -f ../cover/measure-cover_50nodes.awk ../../sim_scene/broadcast_50nodes.tr > DBTHBP_cover_50nodes
awk -f ../reduncy/measure-reduncy_50nodes.awk ../../sim_scene/broadcast_50nodes.tr > DBTHBP_reduncy_50nodes
awk -f ../repeat_area/measure-repeat_area_50nodes.awk ../../sim_scene/broadcast_50nodes.tr > DBTHBP_repeat_area_50nodes
awk -f ../jitter/measure-jitter.awk ../../sim_scene/broadcast_50nodes.tr > DBTHBP_jitter_50nodes
awk -f ../throughput/measure-throughput.awk ../../sim_scene/broadcast_50nodes.tr > DBTHBP_throughput_50nodes

#100nodes
awk -f ../delay/measure-delay.awk ../../sim_scene/broadcast_100nodes.tr > DBTHBP_delay_100nodes
awk -f ../cover/measure-cover_100nodes.awk ../../sim_scene/broadcast_100nodes.tr > DBTHBP_cover_100nodes
awk -f ../reduncy/measure-reduncy_100nodes.awk ../../sim_scene/broadcast_100nodes.tr > DBTHBP_reduncy_100nodes
awk -f ../repeat_area/measure-repeat_area_100nodes.awk ../../sim_scene/broadcast_100nodes.tr > DBTHBP_repeat_area_100nodes
awk -f ../jitter/measure-jitter.awk ../../sim_scene/broadcast_100nodes.tr > DBTHBP_jitter_100nodes
awk -f ../throughput/measure-throughput.awk ../../sim_scene/broadcast_100nodes.tr > DBTHBP_throughput_100nodes

#cover
cat DBTHBP_cover_10nodes DBTHBP_cover_20nodes DBTHBP_cover_30nodes DBTHBP_cover_40nodes DBTHBP_cover_50nodes DBTHBP_cover_100nodes > DBTHBP_cover
cat DBTHBP_reduncy_10nodes DBTHBP_reduncy_20nodes DBTHBP_reduncy_30nodes DBTHBP_reduncy_40nodes DBTHBP_reduncy_50nodes DBTHBP_reduncy_100nodes > DBTHBP_reduncy
cat DBTHBP_repeat_area_10nodes DBTHBP_repeat_area_20nodes DBTHBP_repeat_area_30nodes DBTHBP_repeat_area_40nodes DBTHBP_repeat_area_50nodes DBTHBP_repeat_area_100nodes > DBTHBP_repeat_area
