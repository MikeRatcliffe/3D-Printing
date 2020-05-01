# 3D-Printing

## Logitec C920 Setup

$ `sudo nano /home/pi/mjpg-streamer/start.sh`

```bash
/usr/bin/v4l2-ctl -c focus_auto=0
/usr/bin/v4l2-ctl -c focus_absolute=102
/usr/bin/v4l2-ctl -c exposure_auto=1
/usr/bin/v4l2-ctl -c exposure_absolute=700
/usr/bin/v4l2-ctl -c white_balance_temperature_auto=0
/usr/bin/v4l2-ctl -c white_balance_temperature=6500
```

## Plugins

<img src="https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/images/Plugins.png" width="47%" alt="Plugins">

## Printer Profile

<p align="left">
<img src="https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/images/1.%20General.png" width="47%" alt="General Settings">
</p>
<p align="right">
<img src="https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/images/2.%20Print%20Bed%20and%20Build%20Volume.png" width="47%" alt="Print Bed and Build Volume">
</p>
<p align="left">
<img src="https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/images/3.%20Axes.png" width="47%" alt="Axes">
</p>
<p align="right">
<img src="https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/images/4.%20Hotend%20and%20Extruder.png" width="47%" alt="Hotend and Extruder">
</p>
</p>
