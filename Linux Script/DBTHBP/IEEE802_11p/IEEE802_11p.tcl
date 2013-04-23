#802.11p default parameters
Phy/WirelessPhyExt set CSThresh_                5.12715e-11   ;#-85 dBm Wireless interface sensitivity (sensitivity defined in the standard)
#Phy/WirelessPhyExt set RXThresh_				5.12715e-11;
Phy/WirelessPhyExt set Pt_                      0.28183815
Phy/WirelessPhyExt set freq_                    5.9e+9
Phy/WirelessPhyExt set noise_floor_             1.26e-13    ;#-99 dBm for 10MHz bandwidth
Phy/WirelessPhyExt set L_                       1.0         ;#default radio circuit gain/loss
Phy/WirelessPhyExt set PowerMonitorThresh_      6.310e-14   ;#-102dBm power monitor  sensitivity
Phy/WirelessPhyExt set HeaderDuration_          0.000040    ;#40 us
Phy/WirelessPhyExt set BasicModulationScheme_   0
Phy/WirelessPhyExt set PreambleCaptureSwitch_   1
Phy/WirelessPhyExt set DataCaptureSwitch_       0
Phy/WirelessPhyExt set SINR_PreambleCapture_    2.5118;     ;# 4 dB
Phy/WirelessPhyExt set SINR_DataCapture_        100.0;      ;# 10 dB
Phy/WirelessPhyExt set trace_dist_              1e6         ;# PHY trace until distance of 1 Mio. km ("infinty")
Phy/WirelessPhyExt set PHY_DBG_                 0

Mac/802_11Ext set CWMin_                        15
Mac/802_11Ext set CWMax_                        1023
Mac/802_11Ext set SlotTime_                     0.000013
Mac/802_11Ext set SIFS_                         0.000032
Mac/802_11Ext set ShortRetryLimit_              7
Mac/802_11Ext set LongRetryLimit_               4
Mac/802_11Ext set HeaderDuration_               0.000040
Mac/802_11Ext set SymbolDuration_               0.000008
Mac/802_11Ext set BasicModulationScheme_        0
Mac/802_11Ext set use_802_11a_flag_             true
Mac/802_11Ext set RTSThreshold_                 2346
Mac/802_11Ext set MAC_DBG                       0

#=====================================================================

#configure RF model parameters
Antenna/OmniAntenna set Gt_ 1.0
Antenna/OmniAntenna set Gr_ 1.0
Antenna/OmniAntenna set X_ 0
Antenna/OmniAntenna set Y_ 0
Antenna/OmniAntenna set Z_ 1.5

Propagation/Nakagami set use_nakagami_dist_ false
Propagation/Nakagami set gamma0_ 2.0
Propagation/Nakagami set gamma1_ 2.0
Propagation/Nakagami set gamma2_ 2.0

Propagation/Nakagami set d0_gamma_ 200
Propagation/Nakagami set d1_gamma_ 500

Propagation/Nakagami set m0_  1.0
Propagation/Nakagami set m1_  1.0
Propagation/Nakagami set m2_  1.0

Propagation/Nakagami set d0_m_ 80
Propagation/Nakagami set d1_m_ 200

#=======================================================================

