# 3D-Printing

## Logitec C920 Setup

$ `sudo nano /etc/rc.local`

```bash
/usr/bin/v4l2-ctl -c focus_auto=0
/usr/bin/v4l2-ctl -c focus_absolute=102
/usr/bin/v4l2-ctl -c exposure_auto=1
/usr/bin/v4l2-ctl -c exposure_absolute=400
/usr/bin/v4l2-ctl -c white_balance_temperature_auto=0
/usr/bin/v4l2-ctl -c white_balance_temperature=5500
```

## Plugins

```bash
/home/pi/oprint/bin/pip install "https://github.com/BillyBlaze/OctoPrint-FullScreen/archive/master.zip"
/home/pi/oprint/bin/pip install "https://github.com/birkbjo/OctoPrint-Themeify/archive/master.zip"
/home/pi/oprint/bin/pip install "https://github.com/eyal0/OctoPrint-MultipleUpload/archive/master.zip"
/home/pi/oprint/bin/pip install "https://github.com/eyal0/OctoPrint-PrintTimeGenius/archive/master.zip"
/home/pi/oprint/bin/pip install "https://github.com/jneilliii/OctoPrint-PrusaSlicerThumbnails/archive/master.zip"
/home/pi/oprint/bin/pip install "https://github.com/jneilliii/OctoPrint-TabOrder/archive/master.zip"
/home/pi/oprint/bin/pip install "https://github.com/jneilliii/OctoPrint-Tasmota/archive/master.zip"
/home/pi/oprint/bin/pip install "https://github.com/OctoPrint/OctoPrint-FirmwareUpdater/archive/master.zip"
/home/pi/oprint/bin/pip install "https://github.com/OllisGit/OctoPrint-DisplayLayerProgress/releases/latest/download/master.zip"
/home/pi/oprint/bin/pip install "https://github.com/paukstelis/OctoPrint-Cancelobject/archive/master.zip"
/home/pi/oprint/bin/pip install "https://github.com/rlogiacco/UploadAnything/archive/master.zip"
/home/pi/oprint/bin/pip install "https://github.com/Salandora/OctoPrint-FileManager/archive/master.zip"
/home/pi/oprint/bin/pip install "https://github.com/Sebclem/OctoPrint-SimpleEmergencyStop/archive/master.zip"
/home/pi/oprint/bin/pip install "https://github.com/The-EG/OctoPrint-CameraSettings/archive/main.zip"
/home/pi/oprint/bin/pip install "https://github.com/TheThief/Octoprint_Simple_Filament_Change_Buttons/archive/master.zip"
```

## Printer Profile

### General

![General Settings](https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/_octoprint%20setup/1.%20General.png)

### Bed and Volume

![Print Bed and Build Volume](https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/_octoprint%20setup/2.%20Print%20Bed%20and%20Build%20Volume.png)

### Axes

![Axes](https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/_octoprint%20setup/3.%20Axes.png)

### Hotend and Extruder

![Hotend and Extruder](https://raw.githubusercontent.com/MikeRatcliffe/3D-Printing/master/_octoprint%20setup/4.%20Hotend%20and%20Extruder.png)
