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

- Cancel Objects
- Exclude Region
- FileManager
- Fullscreen Plugin
- M73 Progress Plugin
- MultipleUpload Plugin
- PrintTimeGenius Plugin
- PrusaSlicer Thumbnails
- STL Viewer
- Tab Order
- Tasmota
- Themeify

## Printer Profile

![General Settings](https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/images/1.%20General.png)
![Print Bed and Build Volume](https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/images/2.%20Print%20Bed%20and%20Build%20Volume.png)
![Axes](https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/images/3.%20Axes.png)
![Hotend and Extruder](https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/images/4.%20Hotend%20and%20Extruder.png)
