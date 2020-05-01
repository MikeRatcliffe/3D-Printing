# 3D-Printing

## Logitec C920 Setup

$ `sudo nano /etc/rc.local`

```bash
/usr/bin/v4l2-ctl -c focus_auto=0
/usr/bin/v4l2-ctl -c focus_absolute=102
/usr/bin/v4l2-ctl -c white_balance_temperature_auto=0
/usr/bin/v4l2-ctl -c white_balance_temperature=6500
```

## Plugins

- Cancel Objects
- Exclude Region
- FileManager
- Fullscreen Plugin
- M73 Progress Plugin (0.2.0)
- MultipleUpload Plugin (1.1.0)
- PrintTimeGenius Plugin (2.2.1)
- PrusaSlicer Thumbnails (0.0.7)
- STL Viewer (0.4.2)
- Tab Order (0.5.6)
- Tasmota (0.8.11)
- Themeify (1.2.2)

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
