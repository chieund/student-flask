/*
 Navicat Premium Data Transfer

 Source Server         : local_test
 Source Server Type    : PostgreSQL
 Source Server Version : 140002
 Source Host           : localhost:5432
 Source Catalog        : db_student
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140002
 File Encoding         : 65001

 Date: 10/05/2022 00:23:25
*/


-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS "public"."student";
CREATE TABLE "public"."student" (
  "id" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "code" varchar(255) COLLATE "pg_catalog"."default",
  "classes" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."student" OWNER TO "postgres";

-- ----------------------------
-- Records of student
-- ----------------------------
BEGIN;
INSERT INTO "public"."student" VALUES (1, 'chieu nguyen', '1122', 'khoa hoc du lieu');
INSERT INTO "public"."student" VALUES (2, 'chi dan', '2233', 'cntt');
INSERT INTO "public"."student" VALUES (3, 'nguyen', '3434', 'httt');
INSERT INTO "public"."student" VALUES (4, 'nguyen', '3434', 'httt');
INSERT INTO "public"."student" VALUES (5, 'test', '3434', 'cnpn');
INSERT INTO "public"."student" VALUES (5, 'test', '3434', 'cnpn');
INSERT INTO "public"."student" VALUES (5, 'test', '3434', 'cnpn');
INSERT INTO "public"."student" VALUES (5, 'test', '3434', 'cnpn');
INSERT INTO "public"."student" VALUES (5, 'test', '3434', 'cnpn');
INSERT INTO "public"."student" VALUES (5, 'test', '3434', 'cnpn');
INSERT INTO "public"."student" VALUES (5, 'test', '3434', 'cnpn');
INSERT INTO "public"."student" VALUES (5, 'test', '3434', 'cnpn');
INSERT INTO "public"."student" VALUES (5, 'test', '3434', 'cnpn');
INSERT INTO "public"."student" VALUES (5, 'test', '3434', 'cnpn');
INSERT INTO "public"."student" VALUES (5, 'test', '3434', 'cnpn');
INSERT INTO "public"."student" VALUES (5, 'test', '3434', 'cnpn');
INSERT INTO "public"."student" VALUES (8, 'chieu nguywe', '343', '343434');
INSERT INTO "public"."student" VALUES (8, 'chieu nguywe', '343', '343434');
INSERT INTO "public"."student" VALUES (4545, '454545', '54545', '454545');
INSERT INTO "public"."student" VALUES (22, '343', 'dfdf', 'dfdfdf');
INSERT INTO "public"."student" VALUES (3434, '343434', '343434', '343434');
COMMIT;
