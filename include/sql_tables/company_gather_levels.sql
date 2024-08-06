/*
 Navicat Premium Data Transfer

 Source Server         : Server
 Source Server Type    : SQLite
 Source Server Version : 3035005 (3.35.5)
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3035005 (3.35.5)
 File Encoding         : 65001

 Date: 06/08/2024 15:24:31
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for company_gather_levels
-- ----------------------------
DROP TABLE IF EXISTS "company_gather_levels";
CREATE TABLE "company_gather_levels" (
  "id" integer NOT NULL,
  "level" integer NOT NULL,
  "gather_amount" real NOT NULL,
  "required_experience" real,
  PRIMARY KEY ("id")
);

-- ----------------------------
-- Records of company_gather_levels
-- ----------------------------
INSERT INTO "company_gather_levels" VALUES (1, 1, 5.0, 100.0);
INSERT INTO "company_gather_levels" VALUES (2, 2, 10.0, 188.0);
INSERT INTO "company_gather_levels" VALUES (3, 3, 15.0, 350.0);
INSERT INTO "company_gather_levels" VALUES (4, 4, 20.0, 644.0);
INSERT INTO "company_gather_levels" VALUES (5, 5, 25.0, 1173.0);
INSERT INTO "company_gather_levels" VALUES (6, 6, 30.0, 2112.0);
INSERT INTO "company_gather_levels" VALUES (7, 7, 35.0, 3760.0);
INSERT INTO "company_gather_levels" VALUES (8, 8, 40.0, 6618.0);
INSERT INTO "company_gather_levels" VALUES (9, 9, 45.0, 11516.0);
INSERT INTO "company_gather_levels" VALUES (10, 10, 50.0, 19808.0);
INSERT INTO "company_gather_levels" VALUES (11, 11, 55.0, 33674.0);
INSERT INTO "company_gather_levels" VALUES (12, 12, 60.0, 56573.0);
INSERT INTO "company_gather_levels" VALUES (13, 13, 65.0, 93912.0);
INSERT INTO "company_gather_levels" VALUES (14, 14, 70.0, 154016.0);
INSERT INTO "company_gather_levels" VALUES (15, 15, 75.0, 249506.0);
INSERT INTO "company_gather_levels" VALUES (16, 16, 80.0, 396715.0);
INSERT INTO "company_gather_levels" VALUES (17, 17, 85.0, 618876.0);
INSERT INTO "company_gather_levels" VALUES (18, 18, 90.0, 946881.0);
INSERT INTO "company_gather_levels" VALUES (19, 19, 95.0, 1420322.0);
INSERT INTO "company_gather_levels" VALUES (20, 20, 100.0, 2087874.0);
INSERT INTO "company_gather_levels" VALUES (21, 21, 105.0, 3006539.0);
INSERT INTO "company_gather_levels" VALUES (22, 22, 110.0, 4239220.0);
INSERT INTO "company_gather_levels" VALUES (23, 23, 115.0, 5850124.0);
INSERT INTO "company_gather_levels" VALUES (24, 24, 120.0, 7897668.0);
INSERT INTO "company_gather_levels" VALUES (25, 25, 125.0, 10424922.0);
INSERT INTO "company_gather_levels" VALUES (26, 26, 130.0, 13448150.0);
INSERT INTO "company_gather_levels" VALUES (27, 27, 135.0, 16944669.0);
INSERT INTO "company_gather_levels" VALUES (28, 28, 140.0, 20841943.0);
INSERT INTO "company_gather_levels" VALUES (29, 29, 145.0, 25010332.0);
INSERT INTO "company_gather_levels" VALUES (30, 30, 150.0, 29262089.0);

PRAGMA foreign_keys = true;
