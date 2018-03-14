REM --This is an example of how launch RapidMiner without prompt for automatic coin selection pools


setx GPU_FORCE_64BIT_PTR 1
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100


:LOOP

powershell -version 5.0 -noexit -executionpolicy bypass -command "&.\core.ps1 -MiningMode Automatic -PoolsName Zpool,Mining_pool_hub -Coinsname bitcore,Signatum,Zcash

GOTO LOOP