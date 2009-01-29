DROP TABLE IF EXISTS achievements;
CREATE TABLE achievements (
        aid mediumint(8) unsigned NOT NULL auto_increment,
        name varchar(30) NOT NULL default '',
        description varchar(128) NOT NULL default '',
        repeatable enum('yes','no') NOT NULL default 'no',
        increment tinyint(1) unsigned NOT NULL default '0',
        PRIMARY KEY (aid)
) TYPE=InnoDB;

DROP TABLE IF EXISTS user_achievements;
CREATE TABLE user_achievements (
        id mediumint(8) unsigned NOT NULL auto_increment,
        uid mediumint(8) unsigned NOT NULL default '0',
        aid mediumint(8) unsigned NOT NULL default '0',
        exponent tinyint(1) unsigned NOT NULL default '0',
        createtime datetime NOT NULL default '0000-00-00 00:00:00',
        PRIMARY KEY  (id),
        UNIQUE KEY achievement (uid,aid)
) TYPE=InnoDB;
