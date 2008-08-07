function sqlite3_open(
		dbname:	string;
		var db:	longword
		): integer;
	external 'sqlite3_open@files:sqlite3.dll cdecl';

function sqlite3_close(
		db:	longword
		): integer;
	external 'sqlite3_close@files:sqlite3.dll cdecl';

function sqlite3_exec(
		db:				longword;
		SQLStatement:	string;
		CallbackProc: 	integer;
		Sender:			integer;
		ErrMsg:			integer
		): integer;
	external 'sqlite3_exec@files:sqlite3.dll cdecl';

