WITH tmp AS (SELECT {0} FROM {2})
INSERT INTO {1} AS prod ({0})
SELECT * FROM tmp
  ON CONFLICT (period_key) DO NOTHING;