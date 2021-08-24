BEGIN;

DROP TABLE IF EXISTS
"user",
"dog",
"cat",
"content",
"presta",
"event",
"report",
"animal",
"message_has_user",
"message";

CREATE TABLE "user" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "lastname" TEXT NOT NULL,
    "firstname" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "num" INT NOT NULL,
    "comp" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "postal_code" INT NOT NULL,
    "city" TEXT NOT NULL,
    "latitude" INT NOT NULL,
    "longitude" INT NOT NULL,
    "active" BOOLEAN NOT NULL DEFAULT TRUE,
    "role" TEXT NOT NULL DEFAULT 'user',
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "dog" ( 
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "race" TEXT NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
    );

    
CREATE TABLE "cat" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "race" TEXT NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
    );

CREATE TABLE "content" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "element" TEXT NOT NULL,
    "text" TEXT NOT NULL DEFAULT '',
    "photo" BYTEA,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
    );

CREATE TABLE "presta" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" TEXT NOT NULL,
    "price" INT NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
    );

CREATE TABLE "event" ( 
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "start_time" DATE NOT NULL,
    "end_time" DATE NOT NULL,
    "paid" BOOLEAN NOT NULL DEFAULT FALSE,
    "user_id" INTEGER NOT NULL REFERENCES "user"("id") ON DELETE CASCADE,
    "presta_id" INTEGER NOT NULL REFERENCES "presta"("id") ON DELETE CASCADE,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
    );

CREATE TABLE "report" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "title" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "finished" BOOLEAN NOT NULL DEFAULT FALSE,
    "event_id" INTEGER NOT NULL REFERENCES "event"("id") ON DELETE CASCADE,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
    );

CREATE TABLE "animal" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" TEXT NOT NULL,
    "birth" DATE NOT NULL,
    "photo" BYTEA,
    "cat_id" INTEGER REFERENCES "cat"("id") ON DELETE CASCADE,
    "dog_id" INTEGER REFERENCES "dog"("id") ON DELETE CASCADE,
    "user_id" INTEGER NOT NULL REFERENCES "user"("id") ON DELETE CASCADE,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
    );

CREATE TABLE "message" ( 
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "text" TEXT NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
    );

CREATE TABLE "message_has_user" (
    PRIMARY KEY ("message_id", "user_id"),
    "message_id" INTEGER NOT NULL REFERENCES "message"("id") ON DELETE CASCADE,
    "user_id" INTEGER NOT NULL REFERENCES "user"("id") ON DELETE CASCADE,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
    );
    
COMMIT;