-- CreateTable
CREATE TABLE "House" (
    "id" SERIAL NOT NULL,
    "slug" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "city" TEXT,
    "price" TEXT,
    "area" TEXT,
    "rooms" TEXT,
    "image" TEXT,
    "features" TEXT,
    "description" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "House_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Feature" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Feature_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "HouseFeature" (
    "houseId" INTEGER NOT NULL,
    "featureId" INTEGER NOT NULL,

    CONSTRAINT "HouseFeature_pkey" PRIMARY KEY ("houseId","featureId")
);

-- CreateIndex
CREATE UNIQUE INDEX "House_slug_key" ON "House"("slug");

-- CreateIndex
CREATE UNIQUE INDEX "Feature_name_key" ON "Feature"("name");

-- CreateIndex
CREATE INDEX "HouseFeature_featureId_idx" ON "HouseFeature"("featureId");

-- AddForeignKey
ALTER TABLE "HouseFeature" ADD CONSTRAINT "HouseFeature_houseId_fkey" FOREIGN KEY ("houseId") REFERENCES "House"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HouseFeature" ADD CONSTRAINT "HouseFeature_featureId_fkey" FOREIGN KEY ("featureId") REFERENCES "Feature"("id") ON DELETE CASCADE ON UPDATE CASCADE;
