##################################################################################
#  CIC 0.18um 1.8V/3.3V 1P6M Virtual Mixed Mode/RFCMOS Process Device Formation  #
#                        Laker technology file                                   #
#                          Version : 1.0					 #
##################################################################################
#
#
#***************************************************************
# 1.layoutView system unit                                      
#***************************************************************
tfLayoutSystemUnit {
  userUnit		micron
  dbScale		0.001000
  dbResolution		0.005000
  xGridSpacing		0.005000
  yGridSpacing		0.005000
  majorGridRatio	2
  gridType		Dot
}
#
#***************************************************************
# 2.Definition of purpose name and purpose number               
#***************************************************************
#       Purpose     Purpose
#       Name        No.
#---------------------------------------------------------------
tfSystemPurpose {
    # System default definition purpose : boundary,pin,drawing,net
    # User can define purpose between 1 and 239.
  def { drawing1    1   }
  def { drawing2    2   }
  def { drawing3    3   }
  def { drawing4    4   }
  def { drawing5    5   }
  def { drawing6    6   }
  def { drawing7    7   }
  def { drawing8    8   }
  def { drawing9    9   }
  def { drawing10   10  }
  def { drawing12   12  }
  def { drawing13   13  }
  def { drawing14   14  }
  def { drawing15   15  }
  def { drawing16   16  }
  def { drawing17   17  }
  def { drawing20   20  }
  def { drawing21   21  }
  def { drawing26   26  }
  def { drawing27   27  }
  def { drawing28   28  }
  def { drawing29   29  }
  def { drawing30   30  }
  def { drawing33   33  }
  def { drawing34   34  }
  def { drawing36   36  }
  def { drawing72   72  }
  def { drawing100  100 }
  def { drawing101  101 }
  def { drawing102  102 }
  def { drawing103  103 }
  def { drawing104  104 }
}
#
#***************************************************************
# 3.layoutView layer table                                      
#***************************************************************
#       Layer       Purpose     Layer Fill      Fill      Line      Line              Layer
#       Name        Name        No    Color     Stipple   Color     Style     Vis Sel Table
#---------------------------------------------------------------
tfLayoutLayerTable {
  def { ref         drawing     0     white     blank     white     solid     yes yes no  }
  def { DIFF        drawing     1     red       backSlash red       solid     yes yes yes }
  def { DIFFRAM     drawing26   1     red       backSlash red       shortdash2h3 yes yes no  }
  def { PWEL        drawing     2     cream     blank     cream     shortDash yes yes no  }
  def { NW          drawing     3     yellow    blank     yellow    mLine     yes yes yes }
  def { DNW         drawing     6     tan       blank     tan       mLine     yes yes yes }
  def { PWBLK       drawing     7     red       blank     red       dashed2h1 yes yes yes }
  def { DNW2        drawing     4     tan       blank     tan       dashed    yes yes no  }
  def { BPW         drawing     5     tan       dots2     tan       solid     yes yes no  }
  def { VTP-SP      drawing     9     tan       blank     tan       shortDash yes yes no  }
  def { VTN-SP      drawing     10    tan       dot1      tan       mLine     yes yes no  }
  def { PIMP        drawing     11    magenta   blank     magenta   solid     yes yes yes }
  def { NIMP        drawing     12    gray      blank     gray      solid     yes yes yes }
  def { NPLUSRAM    drawing26   12    gray      blank     gray      shortdash2h3 yes yes no  }
  def { VTP         drawing     13    tan       blank     tan       shortDash yes yes no  }
  def { VTN         drawing     14    tan       dot1      tan       mLine     yes yes no  }
  def { VTPH        drawing     15    yellow    blank     yellow    shortDash yes yes no  }
  def { VTNH        drawing     16    green     blank     green     mLine     yes yes no  }
  def { PMINUS      drawing     17    magenta   blank     magenta   dashed    yes yes no  }
  def { NMINUS      drawing     18    gray      blank     gray      dashed    yes yes no  }
  def { LVT         drawing     19    blue      blank     blue      mLine     yes yes no  }
  def { VTPL        drawing     20    gray      blank     gray      mLine     yes yes yes }
  def { VTPHL       drawing     21    yellow    blank     yellow    lineStyle1 yes yes yes }
  def { VTNL        drawing     22    blue      blank     blue      dashed3h2 yes yes yes }
  def { VTNI        drawing     23    tan       blank     tan       shortDash yes yes yes }
  def { VTNHL       drawing     24    tan       blank     tan       mLine     yes yes yes }
  def { CELL_VTN    drawing     25    red       blank     red       mLine     yes yes no  }
  def { C-CELL_BLOCK drawing72   25    orange    blank     orange    mLine     yes yes no  }
  def { VTNHI       drawing     26    white     blank     white     solid     yes yes no  }
  def { RESISTOR    drawing     27    white     blank     white     solid     yes yes no  }
  def { VTNHH       drawing     28    tan       blank     tan       solid     yes yes no  }
  def { NPOLY       drawing     29    blue      pplusp    blue      thickLine yes yes no  }
  def { ESD         drawing     31    yellow    blank     yellow    dashDot   yes yes no  }
  def { PESD        drawing     32    white     dot2      white     solid     yes yes no  }
  def { CELLEX      drawing     33    yellow    blank     yellow    doubleDash yes yes no  }
  def { DT          drawing     34    yellow    blank     yellow    lineStyle1 yes yes no  }
  def { MG          drawing     35    yellow    blank     yellow    dashed3h2 yes yes no  }
  def { SAB         drawing     36    forest    pplusp    forest    solid     yes yes yes }
  def { OD2         drawing     37    winColor2 dagger    winColor1 thickLine yes yes yes }
  def { HRP         drawing     38    yellow    blank     yellow    lineStyle3 yes yes yes }
  def { CONT        drawing     39    green     x         green     mLine     yes yes yes }
  def { CONTBAR     drawing3    39    green     x         green     dashed3h2 yes yes no  }
  def { NWR         drawing     40    orange    blank     orange    solid     yes yes yes }
  def { PO1         drawing     41    blue      cross     blue      thickLine yes yes yes }
  def { PO1BAR      drawing3    41    blue      cross     blue      dashed3h3 yes yes no  }
  def { POLYRAM     drawing26   41    blue      cross     blue      shortdash2h3 yes yes no  }
  def { VARACT      drawing     43    color3    wellp     color3    dashed2h1 yes yes yes }
  def { LIL         drawing     42    yellow    blank     yellow    hidden    yes yes no  }
  def { ME1         drawing     46    cyan      slash     cyan      solid     yes yes yes }
  def { VIA1        drawing     47    yellow    x         yellow    mLine     yes yes yes }
  def { VI1BAR      drawing3    47    yellow    x         yellow    dashed3h2 yes yes no  }
  def { ME2         drawing     48    gold      backSlash gold      solid     yes yes yes }
  def { VIA2        drawing     49    yellow    hLine     yellow    mLine     yes yes yes }
  def { VI2BAR      drawing3    49    yellow    hLine     yellow    dashed3h2 yes yes no  }
  def { ME3         drawing     50    forest    hZigZag   forest    solid     yes yes yes }
  def { VIA3        drawing     51    purple    vLine     purple    mLine     yes yes yes }
  def { VI3BAR      drawing3    51    purple    vLine     purple    dashed3h2 yes yes no  }
  def { ME4         drawing     52    slate     pat1      slate     solid     yes yes yes }
  def { VIA4        drawing     53    lime      triangle  lime      mLine     yes yes yes }
  def { VI4BAR      drawing3    53    lime      triangle  lime      dashed3h2 yes yes no  }
  def { ME5         drawing     54    winColor3 dot3      winColor3 solid     yes yes yes }
  def { VIA5        drawing     55    brown     checker   brown     mLine     yes yes yes }
  def { VI5BAR      drawing3    55    brown     checker   brown     dashed3h2 yes yes no  }
  def { ME6         drawing     56    tan       gnd2S     tan       solid     yes yes yes }
  def { VI6         drawing     57    brown     checker   brown     mLine     yes yes no  }
  def { VI6BAR      drawing3    57    brown     checker   brown     dashed3h2 yes yes no  }
  def { ME7         drawing     58    violet    dot3      violet    solid     yes yes no  }
  def { VI7         drawing     59    cream     checker   cream     mLine     yes yes no  }
  def { VI7BAR      drawing3    59    cream     checker   cream     dashed3h2 yes yes no  }
  def { ME8         drawing     60    color2    gnd2S     color2    solid     yes yes no  }
  def { VI8         drawing     61    cream     checker   cream     mLine     yes yes no  }
  def { VI8BAR      drawing3    61    cream     checker   cream     dashed3h2 yes yes no  }
  def { MMCBP       drawing     64    cyan      vCurb     cyan      solid     yes yes no  }
  def { CTM         drawing     65    pink      hCurb     pink      solid     yes yes yes }
  def { PAD         drawing     66    orange    bigX      orange    solid     yes yes yes }
  def { L2          drawing     67    orange    dots      orange    mLine     yes yes no  }
  def { L3          drawing     68    orange    dots      orange    dashed    yes yes no  }
  def { L4          drawing     69    orange    dots      orange    dashed3h2 yes yes no  }
  def { WL_Well     drawing26   6     orange    bigX      orange    solid     yes yes no  }
  def { ODI-VTP     drawing26   17    purple    dots      purple    mLine     yes yes no  }
  def { ODI-VTN     drawing26   18    forest    dots      forest    dashed    yes yes no  }
  def { OD          drawing29   6     maroon    dots      maroon    dashed3h2 yes yes no  }
  def { IVIABAR     drawing104  59    orange    dots      orange    dashed3h2 yes yes no  }
  def { M1SLMK      drawing7    72    cyan      x         cyan      mLine     yes yes no  }
  def { M2SLMK      drawing7    73    gold      x         gold      mLine     yes yes no  }
  def { M3SLMK      drawing7    74    forest    x         forest    mLine     yes yes no  }
  def { M4SLMK      drawing7    75    slate     x         slate     mLine     yes yes no  }
  def { M5SLMK      drawing7    76    winColor3 x         winColor3 solid     yes yes no  }
  def { M6SLMK      drawing7    77    tan       x         tan       solid     yes yes no  }
  def { M7SLMK      drawing7    78    tan       x         tan       solid     yes yes no  }
  def { L2SLMK      drawing7    67    orange    x         orange    solid     yes yes no  }
  def { PO_LVS      drawing10   41    blue      grid      blue      thickLine yes yes no  }
  def { L1_MCAP     drawing12   66    orange    blank     orange    shortdash1h2 yes yes no  }
  def { L1_ROUT     drawing13   66    orange    dots2     orange    dashed2h1 yes yes no  }
  def { PPO_R_BLK   drawing     44    violet    wellp     violet    dashed2h1 yes yes no  }
  def { DEV_SP      drawing16   9     chocolate metal2S   chocolate dashed2h1 yes yes no  }
  def { RSYMBOL     drawing     81    tan       pplusp    tan       solid     yes yes yes }
  def { PSYMBOL     drawing     82    lime      pplusp    lime      solid     yes yes yes }
  def { WSYMBOL     drawing     83    silver    pplusp    silver    solid     yes yes yes }
  def { TEXT        drawing     85    white     blank     white     solid     yes yes no  }
  def { MSL         drawing     86    color5    pplusp    color5    solid     yes yes no  }
  def { IOMARK      drawing     87    color5    vcc2S     color5    solid     yes yes no  }
  def { FUSEMARK    drawing     88    green     vcc2S     green     dashed    yes yes no  }
  def { FLPMARK     drawing     89    green     vcc2S     green     solid     yes yes no  }
  def { PADMARK     drawing     90    gray      vcc2S     gray      solid     yes yes no  }
  def { IOID        drawing     91    white     metal1S   white     solid     yes yes no  }
  def { ROMID       drawing     93    white     metal1S   white     dots      yes yes no  }
  def { DPID        drawing     94    white     metal1S   white     shortDash yes yes no  }
  def { BLSPID      drawing     95    white     metal1S   white     hidden    yes yes no  }
  def { IRAM        drawing     97    white     metal1S   white     shortdash1h2 yes yes no  }
  def { BDSPID      drawing     98    white     metal1S   white     dashDot   yes yes no  }
  def { PO_TEXT     drawing     100   blue      blank     blue      thickLine yes yes yes }
  def { M1_TEXT     drawing     101   cyan      blank     cyan      solid     yes yes yes }
  def { M2_TEXT     drawing     102   gold      blank     gold      solid     yes yes yes }
  def { M3_TEXT     drawing     103   forest    blank     forest    solid     yes yes yes }
  def { M4_TEXT     drawing     104   slate     blank     slate     solid     yes yes yes }
  def { M5_TEXT     drawing     105   winColor3 blank     winColor3 solid     yes yes yes }
  def { M6_TEXT     drawing     106   tan       blank     tan       solid     yes yes yes }
  def { M7_TEXT     drawing     107   violet    blank     violet    solid     yes yes no  }
  def { INDDUMMYID  drawing5    117   color2    blank     color2    solid     yes yes no  }
  def { ACL         drawing     120   gold      gnd2S     gold      dashed1h1 yes yes no  }
  def { PHL         drawing     121   gold      gnd2S     gold      solid     yes yes no  }
  def { XDIODE      drawing     96    winColor1 poly2p    winColor1 solid     yes yes no  }
  def { MRSDUMMY    drawing30   111   winBack   poly2p    winBack   solid     yes yes yes }
  def { MIMDUMMY    drawing30   112   color5    poly2p    color5    solid     yes yes yes }
  def { BJTDUMMY    drawing30   113   color4    poly2p    color4    solid     yes yes yes }
  def { DioDUMMY    drawing30   114   color2    poly2p    color2    solid     yes yes yes }
  def { INDDUMMYID  drawing     108   color2    blank     color2    solid     yes yes yes }
  def { INDDUMMYLL  drawing30   117   color1    poly2p    color1    solid     yes yes yes }
  def { MMSYMBOL    drawing30   118   winColor5 poly2p    winColor5 solid     yes yes no  }
  def { RFSYMBOL    drawing30   119   gold      poly2p    gold      solid     yes yes no  }
  def { SIZE1       drawing33   111   blue      contp     blue      solid     yes yes no  }
  def { SIZE2       drawing33   112   blue      contp     blue      dots      yes yes no  }
  def { SIZE3       drawing33   113   blue      contp     blue      shortDash yes yes no  }
  def { SIZE4       drawing33   114   blue      contp     blue      hidden    yes yes no  }
  def { SIZE5       drawing33   115   blue      contp     blue      thickLine yes yes no  }
  def { SIZE6       drawing33   116   blue      contp     blue      lineStyle3 yes yes no  }
  def { SIZE7       drawing33   117   blue      contp     blue      dashed2h1 yes yes no  }
  def { SIZE8       drawing33   118   blue      contp     blue      dashed3h3 yes yes no  }
  def { SIZE9       drawing33   119   blue      contp     blue      shortdash1h2 yes yes no  }
  def { SIZE10      drawing34   111   blue      contp     blue      longdash0h2 yes yes no  }
  def { SIZE11      drawing34   112   blue      contp     blue      longdash2h1 yes yes no  }
  def { SIZE12      drawing34   113   blue      contp     blue      dashed    yes yes no  }
  def { SIZE13      drawing34   114   blue      contp     blue      shortdash1h2 yes yes no  }
  def { SIZE14      drawing34   115   blue      contp     blue      longdash0h2 yes yes no  }
  def { SIZE15      drawing34   116   blue      contp     blue      longdash2h1 yes yes no  }
  def { SIZE16      drawing34   117   blue      contp     blue      dashed    yes yes no  }
  def { DIFDMBK     drawing1    70    red       grid      red       solid     yes yes no  }
  def { PLYDMBK     drawing1    71    blue      grid      blue      solid     yes yes no  }
  def { M1DMBK      drawing1    72    cyan      grid      cyan      solid     yes yes no  }
  def { M2DMBK      drawing1    73    gold      grid      gold      solid     yes yes no  }
  def { M3DMBK      drawing1    74    forest    grid      forest    solid     yes yes no  }
  def { M4DMBK      drawing1    75    slate     grid      slate     solid     yes yes no  }
  def { M5DMBK      drawing1    76    winColor3 grid      winColor3 solid     yes yes no  }
  def { M6DMBK      drawing1    77    tan       grid      tan       solid     yes yes no  }
  def { M7DMBK      drawing1    78    violet    grid      violet    solid     yes yes no  }
  def { M8DMBK      drawing1    79    color2    grid      color2    solid     yes yes no  }
  def { M9DMBK      drawing1    80    color2    grid      color2    solid     yes yes no  }
  def { DTDMBK      drawing1    34    violet    grid      violet    solid     yes yes no  }
  def { INDDMBK     drawing100  80    color2    grid      color2    solid     yes yes no  }
  def { M1SLBK      drawing2    72    cyan      vCurb     cyan      solid     yes yes no  }
  def { M2SLBK      drawing2    73    gold      vCurb     gold      solid     yes yes no  }
  def { M3SLBK      drawing2    74    forest    vCurb     forest    solid     yes yes no  }
  def { M4SLBK      drawing2    75    slate     vCurb     slate     solid     yes yes no  }
  def { M5SLBK      drawing2    76    winColor3 vCurb     winColor3 solid     yes yes no  }
  def { M6SLBK      drawing2    77    tan       vCurb     tan       solid     yes yes no  }
  def { M7SLBK      drawing2    78    violet    vCurb     violet    solid     yes yes no  }
  def { M8SLBK      drawing2    79    color2    grid      color2    solid     yes yes no  }
  def { M9SLBK      drawing2    80    color2    grid      color2    solid     yes yes no  }
  def { INDSLBK     drawing101  80    color2    grid      color2    solid     yes yes no  }
  def { DIFFDUMY    drawing8    70    red       hCurb     red       solid     yes yes no  }
  def { PO1DUMY     drawing8    71    blue      hCurb     blue      solid     yes yes no  }
  def { M1DUMY      drawing8    72    cyan      hCurb     cyan      solid     yes yes no  }
  def { M2DUMY      drawing8    73    gold      hCurb     gold      solid     yes yes no  }
  def { M3DUMY      drawing8    74    forest    hCurb     forest    solid     yes yes no  }
  def { M4DUMY      drawing8    75    slate     hCurb     slate     solid     yes yes no  }
  def { M5DUMY      drawing8    76    winColor3 hCurb     winColor3 solid     yes yes no  }
  def { M6DUMY      drawing8    77    tan       hCurb     tan       solid     yes yes no  }
  def { M7DUMY      drawing8    78    violet    hCurb     violet    solid     yes yes no  }
  def { M8DUMY      drawing8    79    color2    hCurb     color2    solid     yes yes no  }
  def { M9DUMY      drawing8    80    color2    hCurb     color2    solid     yes yes no  }
  def { INDDUMY     drawing102  80    color2    grid      color2    solid     yes yes no  }
  def { M1SLOT      drawing9    72    cyan      dot1      cyan      solid     yes yes no  }
  def { M2SLOT      drawing9    73    gold      dot1      gold      solid     yes yes no  }
  def { M3SLOT      drawing9    74    forest    dot1      forest    solid     yes yes no  }
  def { M4SLOT      drawing9    75    slate     dot1      slate     solid     yes yes no  }
  def { M5SLOT      drawing9    76    winColor3 dot1      winColor3 solid     yes yes no  }
  def { M6SLOT      drawing9    77    tan       dot1      tan       solid     yes yes no  }
  def { M7SLOT      drawing9    78    violet    dot1      violet    solid     yes yes no  }
  def { M8SLOT      drawing9    79    color2    dot1      color2    solid     yes yes no  }
  def { M9SLOT      drawing9    80    color2    dot1      color2    solid     yes yes no  }
  def { L2SOLT      drawing9    67    orange    dot1      orange    solid     yes yes no  }
  def { INDSLOT     drawing103  80    color2    grid      color2    solid     yes yes no  }
  def { XOPCD       drawing     70    white     blank     white     solid     yes yes no  }
  def { XOPCP       drawing     71    white     blank     white     solid     yes yes no  }
  def { XOPCM1      drawing     72    white     blank     white     solid     yes yes no  }
  def { XOPCM2      drawing     73    white     blank     white     solid     yes yes no  }
  def { XOPCM3      drawing     74    white     blank     white     solid     yes yes no  }
  def { XOPCM4      drawing     75    white     blank     white     solid     yes yes no  }
  def { XOPCM5      drawing     76    white     blank     white     solid     yes yes no  }
  def { XOPCM6      drawing     77    white     blank     white     solid     yes yes no  }
  def { XOPCM7      drawing     78    white     blank     white     solid     yes yes no  }
  def { XOPCC       drawing     80    white     blank     white     solid     yes yes no  }
  def { XOPCD228    drawing4    70    white     blank     white     solid     yes yes no  }
  def { XOPCP228    drawing4    71    white     blank     white     solid     yes yes no  }
  def { XOPCM1228   drawing4    72    white     blank     white     solid     yes yes no  }
  def { XOPCC228    drawing4    80    white     blank     white     solid     yes yes no  }
  def { XOPCD302    drawing5    70    white     blank     white     solid     yes yes no  }
  def { XOPCP302    drawing5    71    white     blank     white     solid     yes yes no  }
  def { XOPCM1302   drawing5    72    white     blank     white     solid     yes yes no  }
  def { XOPCC302    drawing5    80    white     blank     white     solid     yes yes no  }
  def { XOPCDDP     drawing6    70    white     blank     white     solid     yes yes no  }
  def { XOPCPDP     drawing6    71    white     blank     white     solid     yes yes no  }
  def { XOPCM1DP    drawing6    72    white     blank     white     solid     yes yes no  }
  def { XOPCCDP     drawing6    80    white     blank     white     solid     yes yes no  }
  def { XOPCD2496   drawing14   70    white     blank     white     solid     yes yes no  }
  def { XOPCP2496   drawing14   71    white     blank     white     solid     yes yes no  }
  def { XOPCM12496  drawing14   72    white     blank     white     solid     yes yes no  }
  def { XOPCC2496   drawing14   80    white     blank     white     solid     yes yes no  }
  def { XOPCD228LL  drawing27   70    white     blank     white     solid     yes yes no  }
  def { XOPCP228LL  drawing27   71    white     blank     white     solid     yes yes no  }
  def { XOPCM1228LL drawing27   72    white     blank     white     solid     yes yes no  }
  def { XOPCC228LL  drawing27   80    white     blank     white     solid     yes yes no  }
  def { XOPCDDPLL   drawing28   70    white     blank     white     solid     yes yes no  }
  def { XOPCPDPLL   drawing28   71    white     blank     white     solid     yes yes no  }
  def { XOPCM1DPLL  drawing28   72    white     blank     white     solid     yes yes no  }
  def { XOPCCDPLL   drawing28   80    white     blank     white     solid     yes yes no  }
  def { XOPCD121    drawing15   70    white     blank     white     solid     yes yes no  }
  def { XOPCP121    drawing15   71    white     blank     white     solid     yes yes no  }
  def { XOPCM1121   drawing15   72    white     blank     white     solid     yes yes no  }
  def { XOPCC121    drawing15   80    white     blank     white     solid     yes yes no  }
  def { XOPCD126LL  drawing16   70    white     blank     white     solid     yes yes no  }
  def { XOPCP126LL  drawing16   71    white     blank     white     solid     yes yes no  }
  def { XOPCM1126LL drawing16   72    white     blank     white     solid     yes yes no  }
  def { XOPCC126LL  drawing16   80    white     blank     white     solid     yes yes no  }
  def { XOPCD126HS  drawing17   70    white     blank     white     solid     yes yes no  }
  def { XOPCP126HS  drawing17   71    white     blank     white     solid     yes yes no  }
  def { XOPCM1126HS drawing17   72    white     blank     white     solid     yes yes no  }
  def { XOPCC126HS  drawing17   80    white     blank     white     solid     yes yes no  }
  def { ME1         blockage    46    cyan      grid      cyan      dashed3h2 yes yes no  }
  def { ME2         blockage    48    gold      grid      gold      dashed3h2 yes yes no  }
  def { ME3         blockage    50    forest    grid      forest    dashed3h2 yes yes no  }
  def { ME4         blockage    52    slate     grid      slate     dashed3h2 yes yes no  }
  def { ME5         blockage    54    winColor3 grid      winColor3 dashed3h2 yes yes no  }
  def { ME6         blockage    56    tan       grid      tan       dashed3h2 yes yes no  }
  def { BULK        substrate   200   white     blank     white     solid     no  no  no  }
}
#
#***************************************************************
# 4.Stream Table                                                
#***************************************************************
#       Layer       Purpose     Stream      Data
#       Name        Name        Number      Type
#---------------------------------------------------------------
tfStreamIoTable {
# def { ref         drawing     0           0 }
  def { DIFF        drawing     1           0 }
# def { DIFFRAM     drawing26   1           26 }
# def { PWEL        drawing     2           0 }
  def { NW          drawing     3           0 }
  def { DNW         drawing     6           0 }
  def { PWBLK       drawing     7           0 }
  def { DNW2        drawing     4           0 }
  def { BPW         drawing     5           0 }
# def { VTP-SP      drawing     9           0 }
# def { VTN-SP      drawing     10          0 }
  def { PIMP        drawing     11          0 }
  def { NIMP        drawing     12          0 }
# def { NPLUSRAM    drawing26   12          26 }
# def { VTP         drawing     13          0 }
# def { VTN         drawing     14          0 }
# def { VTPH        drawing     15          0 }
# def { VTNH        drawing     16          0 }
  def { PMINUS      drawing     17          0 }
  def { NMINUS      drawing     18          0 }
  def { LVT         drawing     19          0 }
  def { VTPL        drawing     20          0 }
  def { VTPHL       drawing     21          0 }
  def { VTNL        drawing     22          0 }
  def { VTNI        drawing     23          0 }
  def { VTNHL       drawing     24          0 }
  def { CELL_VTN    drawing     25          0 }
  def { C-CELL_BLOCK drawing72   25          72 }
  def { VTNHI       drawing     26          0 }
  def { RESISTOR    drawing     27          0 }
  def { VTNHH       drawing     28          0 }
  def { NPOLY       drawing     29          0 }
  def { ESD         drawing     31          0 }
  def { PESD        drawing     32          0 }
  def { CELLEX      drawing     33          0 }
  def { DT          drawing     34          0 }
  def { MG          drawing     35          0 }
  def { SAB         drawing     36          0 }
  def { OD2         drawing     37          0 }
  def { HRP         drawing     38          0 }
  def { CONT        drawing     39          0 }
  def { CONTBAR     drawing3    39          3 }
  def { NWR         drawing     40          0 }
  def { PO1         drawing     41          0 }
  def { PO1BAR      drawing3    41          3 }
  def { POLYRAM     drawing26   41          26 }
  def { VARACT      drawing     43          0 }
  def { LIL         drawing     42          0 }
  def { ME1         drawing     46          0 }
  def { VIA1        drawing     47          0 }
  def { VI1BAR      drawing3    47          3 }
  def { ME2         drawing     48          0 }
  def { VIA2        drawing     49          0 }
  def { VI2BAR      drawing3    49          3 }
  def { ME3         drawing     50          0 }
  def { VIA3        drawing     51          0 }
  def { VI3BAR      drawing3    51          3 }
  def { ME4         drawing     52          0 }
  def { VIA4        drawing     53          0 }
  def { VI4BAR      drawing3    53          3 }
  def { ME5         drawing     54          0 }
  def { VIA5        drawing     55          0 }
  def { VI5BAR      drawing3    55          3 }
  def { ME6         drawing     56          0 }
  def { VI6         drawing     57          0 }
  def { VI6BAR      drawing3    57          3 }
  def { ME7         drawing     58          0 }
  def { VI7         drawing     59          0 }
  def { VI7BAR      drawing3    59          3 }
  def { ME8         drawing     60          0 }
  def { VI8         drawing     61          0 }
  def { VI8BAR      drawing3    61          3 }
  def { MMCBP       drawing     64          0 }
  def { CTM         drawing     65          0 }
  def { PAD         drawing     66          0 }
  def { L2          drawing     67          0 }
  def { L3          drawing     68          0 }
  def { L4          drawing     69          0 }
  def { WL_Well     drawing26   6           26 }
  def { ODI-VTP     drawing26   17          26 }
  def { ODI-VTN     drawing26   18          26 }
  def { OD          drawing29   6           29 }
  def { IVIABAR     drawing104  59          104 }
  def { M1SLMK      drawing7    72          7 }
  def { M2SLMK      drawing7    73          7 }
  def { M3SLMK      drawing7    74          7 }
  def { M4SLMK      drawing7    75          7 }
  def { M5SLMK      drawing7    76          7 }
  def { M6SLMK      drawing7    77          7 }
  def { M7SLMK      drawing7    78          7 }
  def { L2SLMK      drawing7    67          7 }
  def { PO_LVS      drawing10   41          10 }
  def { L1_MCAP     drawing12   66          12 }
  def { L1_ROUT     drawing13   66          13 }
  def { PPO_R_BLK   drawing     44          0 }
  def { DEV_SP      drawing16   9           16 }
  def { RSYMBOL     drawing     81          0 }
  def { PSYMBOL     drawing     82          0 }
  def { WSYMBOL     drawing     83          0 }
  def { TEXT        drawing     85          0 }
  def { MSL         drawing     86          0 }
  def { IOMARK      drawing     87          0 }
  def { FUSEMARK    drawing     88          0 }
  def { FLPMARK     drawing     89          0 }
  def { PADMARK     drawing     90          0 }
  def { IOID        drawing     91          0 }
  def { ROMID       drawing     93          0 }
  def { DPID        drawing     94          0 }
  def { BLSPID      drawing     95          0 }
  def { IRAM        drawing     97          0 }
  def { BDSPID      drawing     98          0 }
  def { PO_TEXT     drawing     100         0 }
  def { M1_TEXT     drawing     101         0 }
  def { M2_TEXT     drawing     102         0 }
  def { M3_TEXT     drawing     103         0 }
  def { M4_TEXT     drawing     104         0 }
  def { M5_TEXT     drawing     105         0 }
  def { M6_TEXT     drawing     106         0 }
  def { M7_TEXT     drawing     107         0 }
  def { INDDUMMYID  drawing5    109         0 }
  def { ACL         drawing     120         0 }
  def { PHL         drawing     121         0 }
  def { XDIODE      drawing     96          0 }
  def { MRSDUMMY    drawing30   111         30 }
  def { MIMDUMMY    drawing30   112         30 }
  def { BJTDUMMY    drawing30   113         30 }
  def { DioDUMMY    drawing30   114         30 }
  def { INDDUMMYID  drawing     117         36 }
  def { INDDUMMYLL  drawing30   117         30 }
  def { MMSYMBOL    drawing30   118         30 }
  def { RFSYMBOL    drawing30   119         30 }
  def { SIZE1       drawing33   111         33 }
  def { SIZE2       drawing33   112         33 }
  def { SIZE3       drawing33   113         33 }
  def { SIZE4       drawing33   114         33 }
  def { SIZE5       drawing33   115         33 }
  def { SIZE6       drawing33   116         33 }
  def { SIZE7       drawing33   117         33 }
  def { SIZE8       drawing33   118         33 }
  def { SIZE9       drawing33   119         33 }
  def { SIZE10      drawing34   111         34 }
  def { SIZE11      drawing34   112         34 }
  def { SIZE12      drawing34   113         34 }
  def { SIZE13      drawing34   114         34 }
  def { SIZE14      drawing34   115         34 }
  def { SIZE15      drawing34   116         34 }
  def { SIZE16      drawing34   117         34 }
  def { DIFDMBK     drawing1    70          1 }
  def { PLYDMBK     drawing1    71          1 }
  def { M1DMBK      drawing1    72          1 }
  def { M2DMBK      drawing1    73          1 }
  def { M3DMBK      drawing1    74          1 }
  def { M4DMBK      drawing1    75          1 }
  def { M5DMBK      drawing1    76          1 }
  def { M6DMBK      drawing1    77          1 }
  def { M7DMBK      drawing1    78          1 }
  def { M8DMBK      drawing1    79          1 }
  def { M9DMBK      drawing1    80          1 }
  def { DTDMBK      drawing1    34          1 }
  def { INDDMBK     drawing100  80          100 }
  def { M1SLBK      drawing2    72          2 }
  def { M2SLBK      drawing2    73          2 }
  def { M3SLBK      drawing2    74          2 }
  def { M4SLBK      drawing2    75          2 }
  def { M5SLBK      drawing2    76          2 }
  def { M6SLBK      drawing2    77          2 }
  def { M7SLBK      drawing2    78          2 }
  def { M8SLBK      drawing2    79          2 }
  def { M9SLBK      drawing2    80          2 }
  def { INDSLBK     drawing101  80          101 }
  def { DIFFDUMY    drawing8    70          8 }
  def { PO1DUMY     drawing8    71          8 }
  def { M1DUMY      drawing8    72          8 }
  def { M2DUMY      drawing8    73          8 }
  def { M3DUMY      drawing8    74          8 }
  def { M4DUMY      drawing8    75          8 }
  def { M5DUMY      drawing8    76          8 }
  def { M6DUMY      drawing8    77          8 }
  def { M7DUMY      drawing8    78          8 }
  def { M8DUMY      drawing8    79          8 }
  def { M9DUMY      drawing8    80          8 }
  def { INDDUMY     drawing102  80          102 }
  def { M1SLOT      drawing9    72          9 }
  def { M2SLOT      drawing9    73          9 }
  def { M3SLOT      drawing9    74          9 }
  def { M4SLOT      drawing9    75          9 }
  def { M5SLOT      drawing9    76          9 }
  def { M6SLOT      drawing9    77          9 }
  def { M7SLOT      drawing9    78          9 }
  def { M8SLOT      drawing9    79          9 }
  def { M9SLOT      drawing9    80          9 }
# def { L2SOLT      drawing9    67          9 }
# def { INDSLOT     drawing103  80          103 }
# def { XOPCD       drawing     70          0 }
# def { XOPCP       drawing     71          0 }
# def { XOPCM1      drawing     72          0 }
# def { XOPCM2      drawing     73          0 }
# def { XOPCM3      drawing     74          0 }
# def { XOPCM4      drawing     75          0 }
# def { XOPCM5      drawing     76          0 }
# def { XOPCM6      drawing     77          0 }
# def { XOPCM7      drawing     78          0 }
# def { XOPCC       drawing     80          0 }
# def { XOPCD228    drawing4    70          4 }
# def { XOPCP228    drawing4    71          4 }
# def { XOPCM1228   drawing4    72          4 }
# def { XOPCC228    drawing4    80          4 }
# def { XOPCD302    drawing5    70          5 }
# def { XOPCP302    drawing5    71          5 }
# def { XOPCM1302   drawing5    72          5 }
# def { XOPCC302    drawing5    80          5 }
# def { XOPCDDP     drawing6    70          6 }
# def { XOPCPDP     drawing6    71          6 }
# def { XOPCM1DP    drawing6    72          6 }
# def { XOPCCDP     drawing6    80          6 }
# def { XOPCD2496   drawing14   70          14 }
# def { XOPCP2496   drawing14   71          14 }
# def { XOPCM12496  drawing14   72          14 }
# def { XOPCC2496   drawing14   80          14 }
# def { XOPCD228LL  drawing27   70          27 }
# def { XOPCP228LL  drawing27   71          27 }
# def { XOPCM1228LL drawing27   72          27 }
# def { XOPCC228LL  drawing27   80          27 }
# def { XOPCDDPLL   drawing28   70          28 }
# def { XOPCPDPLL   drawing28   71          28 }
# def { XOPCM1DPLL  drawing28   72          28 }
# def { XOPCCDPLL   drawing28   80          28 }
# def { XOPCD121    drawing15   70          15 }
# def { XOPCP121    drawing15   71          15 }
# def { XOPCM1121   drawing15   72          15 }
# def { XOPCC121    drawing15   80          15 }
# def { XOPCD126LL  drawing16   70          16 }
# def { XOPCP126LL  drawing16   71          16 }
# def { XOPCM1126LL drawing16   72          16 }
# def { XOPCC126LL  drawing16   80          16 }
# def { XOPCD126HS  drawing17   70          17 }
# def { XOPCP126HS  drawing17   71          17 }
# def { XOPCM1126HS drawing17   72          17 }
# def { XOPCC126HS  drawing17   80          17 }
# def { ME1         blockage    46          241 }
# def { ME2         blockage    48          241 }
# def { ME3         blockage    50          241 }
# def { ME4         blockage    52          241 }
# def { ME5         blockage    54          241 }
# def { ME6         blockage    56          241 }
# def { BULK        substrate   200         240 }
}
#

