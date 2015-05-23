
CREATE TABLE IF NOT EXISTS `books` (
	`book_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`book_title` varchar(200) NOT NULL DEFAULT '',
	`book_img` varchar(200) NOT NULL DEFAULT '',
	`book_price` float NOT NULL DEFAULT '00.00',
	`book_description` text NOT NULL DEFAULT '',
	PRIMARY KEY (`book_id`),
	FULLTEXT (`book_title`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `authors` (
	`author_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
	`author_name` varchar(200) NOT NULL DEFAULT '',
	`author_altname` varchar(200) NOT NULL DEFAULT '',
	PRIMARY KEY (`author_id`),
	UNIQUE KEY `author_name` (`author_name`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 ;

--промежуточная таблица
CREATE TABLE `author_book` (
	`author_id` int(11) unsigned NOT NULL,
	`book_id` int(11) unsigned NOT NULL,
	FOREIGN KEY(author_id) REFERENCES authors(author_id),
	FOREIGN KEY(book_id) REFERENCES books(book_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

