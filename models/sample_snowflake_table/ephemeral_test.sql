select 
    S.ID,
    C.CURRENT_TIMESTAMP
from 
    {{ ref("dishank_incremental_test")}} S
JOIN 
    {{ ref("sample_snowflake_table__sample")}} C ON S.ID = C.ID
GROUP BY 
    S.ID
