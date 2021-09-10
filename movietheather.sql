CREATE TABLE tickets (
	"ticket_id" serial NOT NULL,
	"price" float4 NOT NULL,
	"purchase_id" serial NOT NULL,
	"movie_id" serial NOT NULL,
	CONSTRAINT "Tickets_pk" PRIMARY KEY ("ticket_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE customer (
	"customer_id" serial NOT NULL,
	"first_name" varchar(30) NOT NULL,
	"last_name" varchar(30) NOT NULL,
	"payment_info" varchar(50) NOT NULL,
	"phone" int NOT NULL,
	CONSTRAINT "Customer_pk" PRIMARY KEY ("customer_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE concession (
	"concession_id" serial NOT NULL,
	"concession_name" int NOT NULL,
	"price" float4 NOT NULL,
	"purchase_id" serial NOT NULL,
	CONSTRAINT "Concession_pk" PRIMARY KEY ("concession_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE movies (
	"movie_id" serial NOT NULL,
	"title" varchar(50) NOT NULL,
	"rating" varchar(10) NOT NULL,
	CONSTRAINT "Movies_pk" PRIMARY KEY ("movie_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE purchase (
	"purchase_id" serial NOT NULL,
	"total" float4 NOT NULL,
	"when_bought" TIMESTAMP NOT NULL DEFAULT now()::timestamp,
	"customer_id" int NOT NULL,
	CONSTRAINT "Purchase_pk" PRIMARY KEY ("purchase_id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "tickets" ADD CONSTRAINT "Tickets_fk0" FOREIGN KEY ("purchase_id") REFERENCES "purchase"("purchase_id");
ALTER TABLE "tickets" ADD CONSTRAINT "Tickets_fk1" FOREIGN KEY ("movie_id") REFERENCES "movies"("movie_id");


ALTER TABLE "concession" ADD CONSTRAINT "Concession_fk0" FOREIGN KEY ("purchase_id") REFERENCES "purchase"("purchase_id");


ALTER TABLE "purchase" ADD CONSTRAINT "Purchase_fk0" FOREIGN KEY ("customer_id") REFERENCES "customer"("customer_id");












