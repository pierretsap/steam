private protocol
login
	^ Login new
		database: PostgreSQLPlatform new;
		username: 'pierretsapliayeu';
		password: 'secret';
		"connect string looks like hostname:portNumber_db-name.
		:portNumber is optional"
		connectString: 'localhost:5432_pierretsapliayeu';
		encodingStrategy: #utf8.