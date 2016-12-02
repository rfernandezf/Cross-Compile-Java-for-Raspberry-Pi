pscp -pw raspberry build\libs\output.jar pi@192.168.1.200:Shared
plink -ssh -P 22 -pw raspberry pi@192.168.1.200: chmod 777 Shared/output.jar