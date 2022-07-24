#VERSION#BRANCH#2018.12
#VERSION#cnlDATE#12/05/2018
#VERSION#cnlENV#Linux.0/64bit
#VERSION#RUNTIME#2022/05/27
#VERSION#PLATFORM#Linux x86_64/64bit
#VERSION#SYSTEM#64-bit
#VERSION#uname#(Linux tsri06 2.6.32-642.el6.x86_64 #1 SMP Tue May 10 17:27:01 UTC 2016 x86_64)
lakerExportStream -file \
           /home/ncku_class/vlsisj2022/vlsisj2022063/Desktop/vlsi/CIC_018/laker/ \
           -lib lab -topCell {pseudo_nmos} -case Preserve -label Preserve \
           -maxVerti 4096 -mergeRefLib 1 -OutAbsCell Off -SmashMCell ExpCont \
           -IoLayerMapMode Map -filterText 0 -filterAllSysLayer {All} \
           -reduceMCell 0 -maxAryColRow 0 -reduceDevice 0 -convertPolyText 0 \
           -pathToPolygon 0 -purposeMap 1 -keepPCell 0 -designIntention 0
lakerExit
