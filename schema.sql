--Policy

CREATE TABLE "policy" (
    "id" SERIAL   NOT NULL,
    "name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "Owner" PRIMARY KEY (
        "id"
     )
);

-- Time 

CREATE TABLE "Time" (
    "card" VARCHAR(20)   NOT NULL,
    "id_card_holder" INT   NOT NULL,
    CONSTRAINT "owner" PRIMARY KEY (
        "card"
     )
);

-- Vehicle

CREATE TABLE "Vehicle" (
    "id" SERIAL   NOT NULL,
    "name" VARCHAR(255)   NOT NULL,
    "id_merchant_category" INT   NOT NULL,
    CONSTRAINT "pk_merchant" PRIMARY KEY (
        "id"
     )
);

-- CrashInfo

CREATE TABLE "CrashInfo" (
    "id" SERIAL   NOT NULL,
    "name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "owner" PRIMARY KEY (
        "id"
     )
);

-- PersonInfo

CREATE TABLE "PersonInfo" (
    "id" INT   NOT NULL,
    "date" TIMESTAMP   NOT NULL,
    "amount" FLOAT   NOT NULL,
    "card" VARCHAR(20)   NOT NULL,
    "id_merchant" INT   NOT NULL,
    CONSTRAINT "pk_transaction" PRIMARY KEY (
        "id"
     )
);



