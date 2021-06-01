create or replace PROCEDURE               K_PRODUCTION_DETAIL_SP(
END_DT_CHAR IN VARCHAR2 -- YYYYMMDD
)
AS
BEGIN

INSERT /*+ append */ INTO K_PRODUCTION_DETAIL (
      DETAIL_ID
      ,PRODUCTION_ID
      ,POLICY_ID
      ,ITEM_ID
      ,PRODUCT_ID
      ,POLICY_YEAR
      ,PRODUCTION_VALUE
      ,EFFECTIVE_DATE
      ,HIERARCHY_DATE
      ,PRODUCER_ID
      ,PRODUCER_POSITION
      ,BENEFIT_TYPE
      ,FEE_TYPE
      ,CHARGE_MODE
      ,PREM_LIST_ID
      ,COMM_ITEM_ID
      ,POLICY_CHG_ID
      ,EXCHANGE_RATE
      ,RELATED_ID
      ,INSURED_ID
      ,POL_PRODUCTION_VALUE
      ,POL_CURRENCY_ID
      ,HIERARCHY_EXIST_INDI
      ,AGGREGATION_ID
      ,PRODUCT_VERSION
      ,SOURCE_TABLE
      ,SOURCE_ID
      ,RESULT_LIST_ID
      ,FINISH_TIME
      ,INSERTED_BY
      ,UPDATED_BY
      ,INSERT_TIME
      ,UPDATE_TIME
      ,INSERT_TIMESTAMP
      ,UPDATE_TIMESTAMP
      ,COMMISSION_RATE
      ,CHEQUE_INDI
      ,PREM_ALLOCATE_YEAR
      ,RECALCULATED_INDI
      ,EXCLUDE_POLICY_INDI
      ,CHANNEL_ORG_ID
      ,AGENT_CATE
      ,YEAR_MONTH
      ,CONVERSION_CATE
      ,ORDER_ID
      ,ASSIGN_RATE
      ,DATA_DATE
      ,TBL_UPD_TIME
)
      SELECT
       MA.DETAIL_ID                       AS DETAIL_ID
      ,MA.PRODUCTION_ID                   AS PRODUCTION_ID
      ,MA.POLICY_ID                       AS POLICY_ID
      ,MA.ITEM_ID                         AS ITEM_ID
      ,MA.PRODUCT_ID                      AS PRODUCT_ID
      ,MA.POLICY_YEAR                     AS POLICY_YEAR
      ,MA.PRODUCTION_VALUE                AS PRODUCTION_VALUE
      ,MA.EFFECTIVE_DATE                  AS EFFECTIVE_DATE
      ,MA.HIERARCHY_DATE                  AS HIERARCHY_DATE
      ,MA.PRODUCER_ID                     AS PRODUCER_ID
      ,MA.PRODUCER_POSITION               AS PRODUCER_POSITION
      ,MA.BENEFIT_TYPE                    AS BENEFIT_TYPE
      ,MA.FEE_TYPE                        AS FEE_TYPE
      ,MA.CHARGE_MODE                     AS CHARGE_MODE
      ,MA.PREM_LIST_ID                    AS PREM_LIST_ID
      ,MA.COMM_ITEM_ID                    AS COMM_ITEM_ID
      ,MA.POLICY_CHG_ID                   AS POLICY_CHG_ID
      ,MA.EXCHANGE_RATE                   AS EXCHANGE_RATE
      ,MA.RELATED_ID                      AS RELATED_ID
      ,MA.INSURED_ID                      AS INSURED_ID
      ,MA.POL_PRODUCTION_VALUE            AS POL_PRODUCTION_VALUE
      ,MA.POL_CURRENCY_ID                 AS POL_CURRENCY_ID
      ,MA.HIERARCHY_EXIST_INDI            AS HIERARCHY_EXIST_INDI
      ,MA.AGGREGATION_ID                  AS AGGREGATION_ID
      ,MA.PRODUCT_VERSION                 AS PRODUCT_VERSION
      ,MA.SOURCE_TABLE                    AS SOURCE_TABLE
      ,MA.SOURCE_ID                       AS SOURCE_ID
      ,MA.RESULT_LIST_ID                  AS RESULT_LIST_ID
      ,MA.FINISH_TIME                     AS FINISH_TIME
      ,MA.INSERTED_BY                     AS INSERTED_BY
      ,MA.UPDATED_BY                      AS UPDATED_BY
      ,MA.INSERT_TIME                     AS INSERT_TIME
      ,MA.UPDATE_TIME                     AS UPDATE_TIME
      ,MA.INSERT_TIMESTAMP                AS INSERT_TIMESTAMP
      ,MA.UPDATE_TIMESTAMP                AS UPDATE_TIMESTAMP
      ,MA.COMMISSION_RATE                 AS COMMISSION_RATE
      ,MA.CHEQUE_INDI                     AS CHEQUE_INDI
      ,MA.PREM_ALLOCATE_YEAR              AS PREM_ALLOCATE_YEAR
      ,MA.RECALCULATED_INDI               AS RECALCULATED_INDI
      ,MA.EXCLUDE_POLICY_INDI             AS EXCLUDE_POLICY_INDI
      ,MA.CHANNEL_ORG_ID                  AS CHANNEL_ORG_ID
      ,MA.AGENT_CATE                      AS AGENT_CATE
      ,MA.YEAR_MONTH                      AS YEAR_MONTH
      ,MA.CONVERSION_CATE                 AS CONVERSION_CATE
      ,MA.ORDER_ID                        AS ORDER_ID
      ,MA.ASSIGN_RATE                     AS ASSIGN_RATE
      ,(TO_DATE(END_DT_CHAR, 'YYYYMMDD'))      AS DATA_DATE
      ,CURRENT_DATE                       AS TBL_UPD_TIME
FROM T_PRODUCTION_DETAIL MA
;
COMMIT;

-- Update statistics 20200610 remark stats
--SYS.DBMS_STATS.GATHER_TABLE_STATS('ODS','O_PRODUCTION_DETAIL');


END K_PRODUCTION_DETAIL_SP;