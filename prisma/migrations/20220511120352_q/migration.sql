/*
  Warnings:

  - You are about to drop the column `updateAt` on the `Product` table. All the data in the column will be lost.
  - You are about to drop the column `gdtNumber` on the `Seller` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Seller` table. All the data in the column will be lost.
  - Added the required column `updatedAt` to the `Product` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updateAt` to the `Seller` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Product" DROP COLUMN "updateAt",
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "Seller" DROP COLUMN "gdtNumber",
DROP COLUMN "updatedAt",
ADD COLUMN     "gstNumber" TEXT,
ADD COLUMN     "updateAt" TIMESTAMP(3) NOT NULL;