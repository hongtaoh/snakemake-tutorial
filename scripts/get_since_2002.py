import sys
import pandas as pd

RAW_DATA = sys.argv[1]
OUT_FNAME = sys.argv[2]

df = pd.read_csv(RAW_DATA)
df_out = df.loc[df.year >= 2002]
df_out.to_csv(OUT_FNAME)