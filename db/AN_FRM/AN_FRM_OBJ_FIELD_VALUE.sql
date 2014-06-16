SET DEFINE OFF;
Prompt drop TABLE AN_FRM_OBJ_FIELD_VALUE;
ALTER TABLE AN_FRM_OBJ_FIELD_VALUE
 DROP PRIMARY KEY CASCADE
/

DROP TABLE AN_FRM_OBJ_FIELD_VALUE CASCADE CONSTRAINTS PURGE
/

Prompt Table AN_FRM_OBJ_FIELD_VALUE;
--
-- AN_FRM_OBJ_FIELD_VALUE  (Table) 
--
--  Dependencies: 
--   AN___CONS_LL_CC (Table)
--
CREATE TABLE AN_FRM_OBJ_FIELD_VALUE
(
  OBJECT_ID  INTEGER,
  PARENT     INTEGER                            NOT NULL,
  KEY        VARCHAR2(4000 CHAR)                NOT NULL,
  VALUE      VARCHAR2(4000 CHAR)                NOT NULL,
  LL_CC      VARCHAR2(50 CHAR)
)
/






-- 
-- Non Foreign Key Constraints for Table AN_FRM_OBJ_FIELD_VALUE 
-- 
Prompt Non-Foreign Key Constraints on Table AN_FRM_OBJ_FIELD_VALUE;
ALTER TABLE AN_FRM_OBJ_FIELD_VALUE ADD (
  CONSTRAINT AN_FRM_OBJ_FIELD_VALUE_PK
  PRIMARY KEY
  (OBJECT_ID)
  USING INDEX
)
/

ALTER TABLE AN_FRM_OBJ_FIELD_VALUE ADD (
  CONSTRAINT AN_FRM_OBJ_FIELD_VALUE_U01
  UNIQUE (OBJECT_ID, PARENT)
  USING INDEX
)
/


-- 
-- Foreign Key Constraints for Table AN_FRM_OBJ_FIELD_VALUE 
-- 
Prompt Foreign Key Constraints on Table AN_FRM_OBJ_FIELD_VALUE;
ALTER TABLE AN_FRM_OBJ_FIELD_VALUE ADD (
  CONSTRAINT AN_FRM_OBJ_FIELD_VALUE_R01 
  FOREIGN KEY (LL_CC) 
  REFERENCES AN___CONS_LL_CC (VALUE))
/
