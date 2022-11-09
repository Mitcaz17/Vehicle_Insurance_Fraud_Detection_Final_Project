


CREATE TABLE "Accident" (
    "Policy_Num" varchar   NOT NULL,
    "Date" varchar   NOT NULL,
    "Area" varchar   NOT NULL,
    "Police_Rep" varchar   NOT NULL,
    "Witness_Pres" varchar   NOT NULL,
    "Num_Cars" int   NOT NULL,
    CONSTRAINT "pk_Accident" PRIMARY KEY (
        "Policy_Num"
     )
);

CREATE TABLE "Claim" (
    "Policy_Num" varchar   NOT NULL,
    "Num_Suppliments" int   NOT NULL,
    "Fraud" testbool   NOT NULL,
    CONSTRAINT "pk_Claim" PRIMARY KEY (
        "Policy_Num"
     )
);

CREATE TABLE "Vehicle" (
    "Rep_Num" varchar   NOT NULL,
    "Policy_Num" varchar   NOT NULL,
    "Veh_Catagory" varchar   NOT NULL,
    "Veh_Price" varchar   NOT NULL,
    "Veh_Age" varchar   NOT NULL,
    CONSTRAINT "pk_Vehicle" PRIMARY KEY (
        "Rep_Num","Policy_Num"
     )
);

CREATE TABLE "Person" (
    "Rep_Num" varchar   NOT NULL,
    "Policy_Num" varchar   NOT NULL,
    "Sex" varchar   NOT NULL,
    "Age" int   NOT NULL,
    "Age_Policy" varchar   NOT NULL,
    "Driver_Rate" int   NOT NULL,
    CONSTRAINT "pk_Person" PRIMARY KEY (
        "Rep_Num","Policy_Num"
     )
);

CREATE TABLE "Policy" (
    "Rep_Num" varchar   NOT NULL,
    "Policy_Num" varchar   NOT NULL,
    "Type" varchar   NOT NULL,
    "Deductable" int   NOT NULL,
    "Past_Claims" varchar   NOT NULL,
    "Agent_Type" varchar   NOT NULL,
    "Base_Policy" varchar   NOT NULL,
    CONSTRAINT "pk_Policy" PRIMARY KEY (
        "Rep_Num","Policy_Num"
     )
);

ALTER TABLE "Accident" ADD CONSTRAINT "fk_Accident_Policy_Num" FOREIGN KEY("Policy_Num")
REFERENCES "Claim" ("Policy_Num");

ALTER TABLE "Claim" ADD CONSTRAINT "fk_Claim_Policy_Num" FOREIGN KEY("Policy_Num")
REFERENCES "Person" ("Policy_Num");

ALTER TABLE "Vehicle" ADD CONSTRAINT "fk_Vehicle_Policy_Num" FOREIGN KEY("Policy_Num")
REFERENCES "Policy" ("Policy_Num");

ALTER TABLE "Person" ADD CONSTRAINT "fk_Person_Rep_Num_Policy_Num" FOREIGN KEY("Rep_Num", "Policy_Num")
REFERENCES "Vehicle" ("Rep_Num", "Policy_Num");

ALTER TABLE "Policy" ADD CONSTRAINT "fk_Policy_Rep_Num" FOREIGN KEY("Rep_Num")
REFERENCES "Vehicle" ("Rep_Num");

