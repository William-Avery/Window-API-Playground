/*
 Navicat Premium Data Transfer

 Source Server         : Server
 Source Server Type    : SQLite
 Source Server Version : 3035005 (3.35.5)
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3035005 (3.35.5)
 File Encoding         : 65001

 Date: 06/08/2024 15:24:54
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS "companies";
CREATE TABLE "companies" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "session_id" text,
  "gather_level" integer DEFAULT 1,
  "gather_speed" integer DEFAULT 1,
  "current_experience" real DEFAULT 0,
  "created_at" text,
  CONSTRAINT "fk_gather_lvl" FOREIGN KEY ("gather_level") REFERENCES "company_gather_levels" ("id") ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT "fk_gather_speed" FOREIGN KEY ("gather_speed") REFERENCES "company_gather_speeds" ("id") ON DELETE NO ACTION ON UPDATE CASCADE
);

-- ----------------------------
-- Auto increment value for companies
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 1002 WHERE name = 'companies';

PRAGMA foreign_keys = true;
