/*
 Navicat Premium Data Transfer

 Source Server         : Server
 Source Server Type    : SQLite
 Source Server Version : 3035005 (3.35.5)
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3035005 (3.35.5)
 File Encoding         : 65001

 Date: 06/08/2024 15:24:42
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for company_gather_speeds
-- ----------------------------
DROP TABLE IF EXISTS "company_gather_speeds";
CREATE TABLE "company_gather_speeds" (
  "id" integer NOT NULL,
  "level" integer,
  "gather_speed" real,
  PRIMARY KEY ("id")
);

-- ----------------------------
-- Records of company_gather_speeds
-- ----------------------------
INSERT INTO "company_gather_speeds" VALUES (1, 1, 1.05);
INSERT INTO "company_gather_speeds" VALUES (2, 2, 1.1);
INSERT INTO "company_gather_speeds" VALUES (3, 3, 1.15);
INSERT INTO "company_gather_speeds" VALUES (4, 4, 1.2);
INSERT INTO "company_gather_speeds" VALUES (5, 5, 1.25);
INSERT INTO "company_gather_speeds" VALUES (6, 6, 1.3);
INSERT INTO "company_gather_speeds" VALUES (7, 7, 1.35);
INSERT INTO "company_gather_speeds" VALUES (8, 8, 1.4);
INSERT INTO "company_gather_speeds" VALUES (9, 9, 1.45);
INSERT INTO "company_gather_speeds" VALUES (10, 10, 1.5);
INSERT INTO "company_gather_speeds" VALUES (11, 11, 1.55);
INSERT INTO "company_gather_speeds" VALUES (12, 12, 1.6);
INSERT INTO "company_gather_speeds" VALUES (13, 13, 1.65);
INSERT INTO "company_gather_speeds" VALUES (14, 14, 1.7);
INSERT INTO "company_gather_speeds" VALUES (15, 15, 1.75);
INSERT INTO "company_gather_speeds" VALUES (16, 16, 1.8);
INSERT INTO "company_gather_speeds" VALUES (17, 17, 1.85);
INSERT INTO "company_gather_speeds" VALUES (18, 18, 1.9);
INSERT INTO "company_gather_speeds" VALUES (19, 19, 1.95);
INSERT INTO "company_gather_speeds" VALUES (20, 20, 2.0);
INSERT INTO "company_gather_speeds" VALUES (21, 21, 2.05);
INSERT INTO "company_gather_speeds" VALUES (22, 22, 2.1);
INSERT INTO "company_gather_speeds" VALUES (23, 23, 2.15);
INSERT INTO "company_gather_speeds" VALUES (24, 24, 2.2);
INSERT INTO "company_gather_speeds" VALUES (25, 25, 2.25);
INSERT INTO "company_gather_speeds" VALUES (26, 26, 2.3);
INSERT INTO "company_gather_speeds" VALUES (27, 27, 2.35);
INSERT INTO "company_gather_speeds" VALUES (28, 28, 2.4);
INSERT INTO "company_gather_speeds" VALUES (29, 29, 2.45);
INSERT INTO "company_gather_speeds" VALUES (30, 30, 2.5);
INSERT INTO "company_gather_speeds" VALUES (31, 31, 2.55);
INSERT INTO "company_gather_speeds" VALUES (32, 32, 2.6);
INSERT INTO "company_gather_speeds" VALUES (33, 33, 2.65);
INSERT INTO "company_gather_speeds" VALUES (34, 34, 2.7);
INSERT INTO "company_gather_speeds" VALUES (35, 35, 2.75);
INSERT INTO "company_gather_speeds" VALUES (36, 36, 2.8);
INSERT INTO "company_gather_speeds" VALUES (37, 37, 2.85);
INSERT INTO "company_gather_speeds" VALUES (38, 38, 2.9);
INSERT INTO "company_gather_speeds" VALUES (39, 39, 2.95);
INSERT INTO "company_gather_speeds" VALUES (40, 40, 3.0);
INSERT INTO "company_gather_speeds" VALUES (41, 41, 3.05);
INSERT INTO "company_gather_speeds" VALUES (42, 42, 3.1);
INSERT INTO "company_gather_speeds" VALUES (43, 43, 3.15);
INSERT INTO "company_gather_speeds" VALUES (44, 44, 3.2);
INSERT INTO "company_gather_speeds" VALUES (45, 45, 3.25);
INSERT INTO "company_gather_speeds" VALUES (46, 46, 3.3);
INSERT INTO "company_gather_speeds" VALUES (47, 47, 3.35);
INSERT INTO "company_gather_speeds" VALUES (48, 48, 3.4);
INSERT INTO "company_gather_speeds" VALUES (49, 49, 3.45);
INSERT INTO "company_gather_speeds" VALUES (50, 50, 3.5);

PRAGMA foreign_keys = true;
