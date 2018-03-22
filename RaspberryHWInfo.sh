#!/bin/sh

 

echo

echo "clocks"

echo "======"

for src in arm core h264 isp v3d uart pwm emmc pixel vec hdmi dpi ; do

  echo "$src:\t$(vcgencmd measure_clock $src)"

done

 

echo

echo "voltage"

echo "======="

for id in core sdram_c sdram_i sdram_p ; do

  echo "$id:\t$(vcgencmd measure_volts $id)"

done

 

echo

echo "memory split"

echo "============"

for src in arm gpu ; do

  echo "$(vcgencmd get_mem $src)"

done