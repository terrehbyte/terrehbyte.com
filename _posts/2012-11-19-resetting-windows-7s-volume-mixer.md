---
layout: post
title: Resetting Windows 7's Volume Mixer
date: 2012-11-19 00:53
author: terrehbyte
comments: true
categories: [computers, downloads, fix, hardware, personal, software, troubleshooting, volume, volume mixer]
---
If an application has appears to have sound activity in your volume mixer but isn't actually heard on the device it's outputting to, maybe the mixer needs a good nudge. Here's one thing you can try to get that sound to actually make it all the way to your ears.  

What might've happened is that though the Volume Mixer might not reflect this, it is muting an application, which means it'll never make it to your ears. If this is true, then toggling it in the mixer won't make a bit of difference because it's essentially stuck this way.  

Keep in mind that you will need administrative rights for this to work. To reset the settings, copy down and create a batch file out of the following lines of code or download it at this [link](http://www.mediafire.com/?40mlee7d84fg6pt).

```
@ECHO OFF

ECHO Resetting Volume Mixer Settings...
ECHO You will be temporarily be UNABLE to hear any audio.

REM The next two lines will stop the services responsible for audio.
NET STOP Audiosrv
NET STOP AudioEndpointBuilder

REM Let's replace the settings (stored in a registry entry) with an empty entry.
REG DELETE "HKCU\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore" /F
REG ADD "HKCU\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore"

REM Finally, we'll start the audio service again. You may have to independently start the AudioEndpointBuilder as well.
NET START Audiosrv

ECHO Volume Mixer settings have been reset.
ECHO You should be able to hear now!
pause
```

Once created or downloaded, run the batch file as an administrator. As noted, you won't hear anything for a bit until the services responsible for the audio are stopped, have had their settings cleared, and then restarted. If this doesn't fix it, it probably isn't a problem with your volume mixer. Comments on each part of the process are in the code above.  

Source: [Microsoft Answers](http://answers.microsoft.com/en-us/windows/forum/windows_7-pictures/how-to-reset-volume-mixer-levels/39b6e5f2-0ee9-463c-89c9-8257264294cf?msgId=bb3247b5-6bd8-482a-905e-ceb4b29e4199)  