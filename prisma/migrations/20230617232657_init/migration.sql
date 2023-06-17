-- CreateTable
CREATE TABLE "User" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "username" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "token" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL
);

-- CreateTable
CREATE TABLE "Gear" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "userId" INTEGER NOT NULL,
    "title" TEXT,
    "description" TEXT,
    "skill1" TEXT NOT NULL DEFAULT 'Unknown',
    "skill2" TEXT NOT NULL DEFAULT 'Unknown',
    "skill3" TEXT NOT NULL DEFAULT 'Unknown',
    "skill4" TEXT NOT NULL DEFAULT 'Unknown',
    "gear" TEXT NOT NULL,
    "weapon" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL
);

-- CreateTable
CREATE TABLE "Loadout" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "userId" INTEGER NOT NULL,
    "title" TEXT,
    "description" TEXT,
    "rm" BOOLEAN NOT NULL DEFAULT false,
    "cb" BOOLEAN NOT NULL DEFAULT false,
    "sz" BOOLEAN NOT NULL DEFAULT false,
    "tc" BOOLEAN NOT NULL DEFAULT false,
    "weapon" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL
);

-- CreateTable
CREATE TABLE "GearsOnLoadouts" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "loadoutId" INTEGER NOT NULL,
    "gearId" INTEGER NOT NULL,
    "gearType" TEXT NOT NULL,
    CONSTRAINT "GearsOnLoadouts_gearId_fkey" FOREIGN KEY ("gearId") REFERENCES "Gear" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "GearsOnLoadouts_loadoutId_fkey" FOREIGN KEY ("loadoutId") REFERENCES "Loadout" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "User_username_key" ON "User"("username");

-- CreateIndex
CREATE UNIQUE INDEX "User_token_key" ON "User"("token");
