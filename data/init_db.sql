BEGIN;

DROP TABLE IF EXISTS
"user",
"dog",
"cat",
"presta",
"event",
"report",
"animal",
"conversation",
"conversation_has_user",
"message";

CREATE TABLE "user" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "lastname" TEXT NOT NULL,
    "firstname" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "housenumber" INTEGER NOT NULL,
    "street" TEXT NOT NULL,
    "postcode" INTEGER NOT NULL,
    "city" TEXT NOT NULL,
    "lon" TEXT NOT NULL,
    "lat" TEXT NOT NULL,
    "password" TEXT NOT NULL,
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

CREATE TABLE "presta" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" TEXT NOT NULL,
    "price" INT NOT NULL,
    "color" TEXT NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
    );

CREATE TABLE "event" ( 
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "start_time" BIGINT NOT NULL,
    "end_time" BIGINT NOT NULL,
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
    "type" TEXT NOT NULL,
    "event_id" INTEGER NOT NULL REFERENCES "event"("id") ON DELETE CASCADE,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
    );

CREATE TABLE "animal" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" TEXT NOT NULL,
    "birth" BIGINT NOT NULL,
    "photo" BYTEA,
    "cat_id" INTEGER REFERENCES "cat"("id") ON DELETE CASCADE,
    "dog_id" INTEGER REFERENCES "dog"("id") ON DELETE CASCADE,
    "user_id" INTEGER NOT NULL REFERENCES "user"("id") ON DELETE CASCADE,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
    );

CREATE TABLE "conversation" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "message" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "text" TEXT NOT NULL,
    "conversation_id" INTEGER NOT NULL REFERENCES "conversation"("id") ON DELETE CASCADE,
    "user_id" INTEGER NOT NULL REFERENCES "user"("id") ON DELETE CASCADE,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
);

CREATE TABLE "conversation_has_user" (
    PRIMARY KEY ("conversation_id", "user_id"),
    "conversation_id" INTEGER NOT NULL REFERENCES "conversation"("id") ON DELETE CASCADE,
    "user_id" INTEGER NOT NULL REFERENCES "user"("id") ON DELETE CASCADE,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    "updated_at" TIMESTAMPTZ
);

COMMIT;