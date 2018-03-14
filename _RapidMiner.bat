REM --This is an example of how launch RapidMiner without prompt for automatic coin selection pools

setx GPU_FORCE_64BIT_PTR 1
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

:LOOP

powershell -version 5.0 -noexit -executionpolicy bypass -command "&.\core.ps1 -MiningMode AUTOMATIC -PoolsName NICEHASH,AHASHPOOL,blazepool,Zergpool
GOTO LOOP

rem powershell -version 5.0 -noexit -executionpolicy bypass -command "&.\core.ps1 -MiningMode AUTOMATIC -PoolsName Hash_Refinery,Mining_Pool_Hub,NICEHASH
rem powershell -version 5.0 -noexit -executionpolicy bypass -command "&.\core.ps1 -MiningMode AUTOMATIC -PoolsName Hash_Refinery,Zpool,Mining_Pool_Hub,NICEHASH,NANOPOOL,AHASHPOOL


