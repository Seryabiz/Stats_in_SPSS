﻿
DATASET ACTIVATE DataSet1.
NPAR TESTS
  /CHISQUARE=Grade
  /EXPECTED=EQUAL
  /MISSING ANALYSIS.

DATASET ACTIVATE DataSet2.
CROSSTABS
  /TABLES=School BY Classification
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT
  /COUNT ROUND CELL.

CROSSTABS
  /TABLES=School BY Classification
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT EXPECTED 
  /COUNT ROUND CELL.

DATASET ACTIVATE DataSet3.
CORRELATIONS
  /VARIABLES=baseline posttest
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

DATASET ACTIVATE DataSet4.
CORRELATIONS
  /VARIABLES=mathhome mathach
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.