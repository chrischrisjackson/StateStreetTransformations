
SELECT 
    SPONSOR_ID AS FUND,
    ENTITY_NAME AS ACCOUNTNAME,
    ENTITY_CODE AS ACCOUNTCODE,
    ENTITY_SHORT_NAME ACCOUNTSHORTNAME,
    ENTITY_STATUS_CODE AS ACCOUNTSTATUS,
    SPECIAL_ENTITY_TYPE AS ACCOUNTTYPE,
    MNTHLY_PERF_EST_METHOD AS ACCOUNTMONTHLYPERFESTMETHOD,
    ENTITY_VALUE_EST_METHOD AS ENTITYVALUEESTIMATIONMETHOD,
    INCEPTION_DATE AS OPENDATE,
    COMMINGLED_FLG AS COMMINGLEFLAG,
    CURRENCY_BASE_CODE AS CURRENCY,
    DAILY_PERF_FLG AS DAILYPERFORMANCEFLAG,
    DAILY_PERF_CNVRSN_DT AS DAILYPERFORMANCECONVERSIONDATE,
    CLOSE_DATE_PERFORMANCE AS CLOSEPERFORMANCEDATE,
    DBT_VALID_FROM AS VALIDFROM,
    DBT_VALID_TO AS VALIDTO,
    'STATESTREET' AS LINEAGEKEY

FROM {{ ref('accountprofile_snapshot') }}