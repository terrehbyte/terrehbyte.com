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