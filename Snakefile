from os.path import join as pjoin

DATA_DIR = "data/"
RAW_DATA_DIR = pjoin(DATA_DIR, "raw")
DERIVED_DATA_DIR = pjoin(DATA_DIR, "derived")

###############################################################################
# Raw datasets
###############################################################################

RAW_DATA = pjoin(RAW_DATA_DIR, 'raw_data.csv')

###############################################################################
# Final outputs
###############################################################################

SINCE_2002 = pjoin(DERIVED_DATA_DIR, 'since_2002.csv')

###############################################################################
# Workflows
###############################################################################

rule get_since_2002:
    input: RAW_DATA
    output: SINCE_2002
    shell: "python scripts/get_since_2002.py {input} {output}"