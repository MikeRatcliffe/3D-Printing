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

```
Form Factor: Rectangular
Origin: Lower Left
Heated Bed: True
Heated Chamber: False
X: 250
Y: 210
Z: 200
Custom bounding box: True
X Min: 0
X Max: 250
Y Min: -3
Y Max: 210
Z Min: 0
Z Max: 200
```
