CREATE or REPLACE DATABASE ADL1_NewsPaper COLLATE 'utf8_unicode_520_ci';

CREATE or REPLACE TABLE `ADL1_NewsPaper`.`users`
(`user_id` INT NOT NULL AUTO_INCREMENT ,
`user_name` VARCHAR(50) NOT NULL ,
`password` VARCHAR(100) NOT NULL ,
`image` VARCHAR(255),
PRIMARY KEY (`user_id`),
UNIQUE (`user_name`))
ENGINE = InnoDB;

CREATE or REPLACE TABLE `ADL1_NewsPaper`.`news`
(`news_id` INT NOT NULL AUTO_INCREMENT ,
`title` VARCHAR(50) NOT NULL ,
`category` TEXT NOT NULL ,
`content` TEXT NOT NULL ,
`image` VARCHAR(255) NOT NULL ,
PRIMARY KEY (`news_id`))
ENGINE = InnoDB;