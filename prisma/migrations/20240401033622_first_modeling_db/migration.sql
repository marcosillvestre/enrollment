-- CreateTable
CREATE TABLE "Users" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CustomFields" (
    "id" TEXT NOT NULL,
    "fields" JSONB[],
    "idUser" TEXT NOT NULL,

    CONSTRAINT "CustomFields_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Users_email_key" ON "Users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "CustomFields_idUser_key" ON "CustomFields"("idUser");

-- AddForeignKey
ALTER TABLE "Users" ADD CONSTRAINT "Users_id_fkey" FOREIGN KEY ("id") REFERENCES "CustomFields"("idUser") ON DELETE RESTRICT ON UPDATE CASCADE;
