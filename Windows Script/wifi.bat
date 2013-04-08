#mode：是否启用虚拟WiFi网卡，改为disallow则为禁用。ssid：无线网名称，用英文。key：无线网密码，八个以上字符。
netsh wlan set hostednetwork mode=allow ssid=CleanSky key=12345678
netsh wlan start hostednetwork