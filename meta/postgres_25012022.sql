CREATE SEQUENCE expenses_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."expenses" (
    "id" integer DEFAULT nextval('expenses_id_seq') NOT NULL,
    "user_id" integer NOT NULL,
    "created_at" timestamptz DEFAULT now() NOT NULL,
    "amount" integer NOT NULL,
    "notes" text NOT NULL,
    CONSTRAINT "expenses_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

COMMENT ON TABLE "public"."expenses" IS 'Store my money';

INSERT INTO "expenses" ("id", "user_id", "created_at", "amount", "notes") VALUES
(1,	1,	'2022-01-25 16:52:13.065486+00',	10,	'Nota 1'),
(2,	2,	'2022-01-25 16:52:26.288524+00',	55,	'Notas 2'),
(3,	2,	'2022-01-25 16:52:50.574111+00',	15,	'Colores');

<br />
<b>Warning</b>:  PDO::query(): SQLSTATE[42703]: Undefined column: 7 ERROR:  column &quot;consrc&quot; does not exist
LINE 1: SELECT conname, consrc
                        ^
HINT:  Perhaps you meant to reference the column &quot;pg_constraint.conkey&quot; or the column &quot;pg_constraint.conbin&quot;. in <b>/var/www/html/adminer.php</b> on line <b>185</b><br />
CREATE TABLE "public"."foobar" (
    "ff" integer NOT NULL
) WITH (oids = false);

INSERT INTO "foobar" ("ff") VALUES
(11),
(22);

<br />
<b>Warning</b>:  PDO::query(): SQLSTATE[42703]: Undefined column: 7 ERROR:  column &quot;consrc&quot; does not exist
LINE 1: SELECT conname, consrc
                        ^
HINT:  Perhaps you meant to reference the column &quot;pg_constraint.conkey&quot; or the column &quot;pg_constraint.conbin&quot;. in <b>/var/www/html/adminer.php</b> on line <b>185</b><br />
CREATE SEQUENCE users_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1;

CREATE TABLE "public"."users" (
    "id" integer DEFAULT nextval('users_id_seq') NOT NULL,
    "name" text NOT NULL,
    "created_at" timestamptz DEFAULT now() NOT NULL,
    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

COMMENT ON TABLE "public"."users" IS 'it contents my users';

INSERT INTO "users" ("id", "name", "created_at") VALUES
(1,	'Fran',	'2022-01-25 16:38:35.419017+00'),
(2,	'Marco',	'2022-01-25 16:41:53.108061+00');

ALTER TABLE ONLY "public"."expenses" ADD CONSTRAINT "expenses_user_id_fkey" FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE NOT DEFERRABLE;

-- 2022-01-25 17:06:17.741205+00