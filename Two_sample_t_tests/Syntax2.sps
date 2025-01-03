﻿
DATASET ACTIVATE DataSet1.
T-TEST GROUPS=ST03Q01(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=wlemath
  /CRITERIA=CI(.95).

DATASET ACTIVATE DataSet2.
T-TEST PAIRS=PVTSTD1 WITH PVTSTD3C (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

T-TEST PAIRS=PVTSTD1 WITH PVTSTD2 (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.
