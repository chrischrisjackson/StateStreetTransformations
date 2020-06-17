USE SCHEMA RAW;

CREATE OR REPLACE SEQUENCE SPONSORBENCHMARK_SEQ;

CREATE
OR REPLACE TABLE SPONSORBENCHMARK (
    -- CHANGE *_FLAG, *_FLG DATATYPE TO BOOLEAN ?
    PRIMARY_KEY INT DEFAULT SPONSORBENCHMARK_SEQ.NEXTVAL PRIMARY KEY,
    SPONSOR_ID STRING(27),
    BENCHMARK_ID STRING(27),
    BENCHMARK_OVERRIDE_NAME STRING(255),
    ACTIVE_FLAG STRING(1),
    SEC_ROLLUP_FLAG STRING(1),
    LVL_BELOW_TOTAL_FLAG STRING(1),
    SEC_DISPLAY_ALLOWED_FLAG STRING(1),
    SUMMARY_REPORTING_FLG STRING(1),
    SOURCE_FILENAME STRING(1000),
    SOURCE_FILE_ROW_NUMBER NUMBER(38),
    INGESTION_TIME TIMESTAMP_LTZ DEFAULT CURRENT_TIMESTAMP()
);