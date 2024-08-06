/*
 Navicat Premium Data Transfer

 Source Server         : Server
 Source Server Type    : SQLite
 Source Server Version : 3035005 (3.35.5)
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3035005 (3.35.5)
 File Encoding         : 65001

 Date: 06/08/2024 15:25:08
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS "sessions";
CREATE TABLE "sessions" (
  "id" integer NOT NULL,
  "session_id" text,
  "created_at" text,
  PRIMARY KEY ("id")
);

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO "sessions" VALUES (1, 'bd98cffd-91ac-4433-abb6-0db1e943c769', '2006-11-17 19:22:44');
INSERT INTO "sessions" VALUES (2, 'f0b9d9f1-4223-417d-a0ac-84cd10cf8ef9', '2006-11-17 19:22:44');

PRAGMA foreign_keys = true;
