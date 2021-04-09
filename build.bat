set version="14.0.0"

cd target

copy alttp.sfc "lttphacksa1.sfc"

asar.exe --fix-checksum=on -DVERSION=%version% "../src/main.asm" "lttphacksa1.sfc"

flips --create --bps alttp.sfc "lttphacksa1.sfc" "../docs/patcher/files/sa1.bps"

del "lttphacksa1.sfc"

cd ..

pause