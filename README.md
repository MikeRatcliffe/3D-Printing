# 3D-Printing

## Logitec C920 Setup

$ `sudo nano /etc/rc.local`

```bash
/usr/bin/v4l2-ctl -c focus_auto=0
/usr/bin/v4l2-ctl -c focus_absolute=102
/usr/bin/v4l2-ctl -c exposure_auto=1
/usr/bin/v4l2-ctl -c exposure_absolute=700
/usr/bin/v4l2-ctl -c white_balance_temperature_auto=0
/usr/bin/v4l2-ctl -c white_balance_temperature=6500
```

## Plugins

<p align="center">
<img src="https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/images/Plugins.png" width="70%" alt="Plugins">
</p>

## Printer Profile

### General

<p align="center">
<img src="https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/images/1.%20General.png" width="70%" alt="General Settings" align="center">
</p>

### Bed and Volume

<p align="center">
<img src="https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/images/2.%20Print%20Bed%20and%20Build%20Volume.png" width="70%" alt="Print Bed and Build Volume" align="center">
</p>

### Axes

<p align="center">
<img src="https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/images/3.%20Axes.png" width="70%" alt="Axes" align="center">
</p>

### Hotend and Extruder

<p align="center">
<img src="https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/images/4.%20Hotend%20and%20Extruder.png" width="70%" alt="Hotend and Extruder" align="center">
</p>
