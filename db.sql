BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "StudGroups" (
	"StudGroup"	TEXT,
	"Schedule"	TEXT
);
CREATE TABLE IF NOT EXISTS "UserInteraction" (
	"UserID"	INTEGER,
	"State"	TEXT,
	FOREIGN KEY("UserID") REFERENCES "Users"("UserID") ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS "UserGroups" (
	"UserID"	INTEGER,
	"UserGroup"	TEXT,
	"Mail"	INTEGER,
	FOREIGN KEY("UserID") REFERENCES "Users"("UserID") ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS "Users" (
	"UserID"	INTEGER,
	"UserName"	TEXT,
	PRIMARY KEY("UserID")
);
CREATE TABLE IF NOT EXISTS "Ruobr" (
	"UserID"	INTEGER,
	"Login"	TEXT,
	"Password"	TEXT,
	"LoginTmp"	TEXT,
	"PasswordTmp"	TEXT,
	"Processing"	INTEGER DEFAULT 0,
	FOREIGN KEY("UserID") REFERENCES "Users"("UserID") ON DELETE CASCADE
);
COMMIT;
