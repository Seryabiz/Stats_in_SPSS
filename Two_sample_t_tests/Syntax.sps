﻿
DATASET ACTIVATE DataSet1.
T-TEST GROUPS=ST03Q01(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=wleread2
  /CRITERIA=CI(.95).
