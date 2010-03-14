-- This file is autogenerated by the Rail schema generator, using
-- the schema defined in db/migration/*.rb
--
-- Do not edit this file.  Instead, add a new migration using
-- ./script/generate migration <name>, and then run
-- ./script/generate schema

-- tables 

CREATE TABLE articles_tags (
  `article_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE blacklist_patterns (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `type` varchar(255) DEFAULT NULL,
  `pattern` varchar(255) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE blogs (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `settings` text DEFAULT NULL,
  `base_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE categories (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE categorizations (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `article_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE contents (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `extended` text DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `text_filter_id` int(11) DEFAULT NULL,
  `whiteboard` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT 0,
  `allow_pings` tinyint(1) DEFAULT NULL,
  `allow_comments` tinyint(1) DEFAULT NULL,
  `blog_id` int(11) NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `state` text DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE feedback (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `extended` text DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `text_filter_id` int(11) DEFAULT NULL,
  `whiteboard` text DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `ip` varchar(40) DEFAULT NULL,
  `blog_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT 0,
  `allow_pings` tinyint(1) DEFAULT NULL,
  `allow_comments` tinyint(1) DEFAULT NULL,
  `blog_id` int(11) NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `state` text DEFAULT NULL,
  `status_confirmed` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE notifications (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `content_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE page_caches (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE pings (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `article_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE redirects (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `from_path` varchar(255) DEFAULT NULL,
  `to_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE resources (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `size` int(11) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `itunes_metadata` tinyint(1) DEFAULT NULL,
  `itunes_author` varchar(255) DEFAULT NULL,
  `itunes_subtitle` varchar(255) DEFAULT NULL,
  `itunes_duration` int(11) DEFAULT NULL,
  `itunes_summary` text DEFAULT NULL,
  `itunes_keywords` varchar(255) DEFAULT NULL,
  `itunes_category` varchar(255) DEFAULT NULL,
  `itunes_explicit` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE sessions (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `sessid` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE sidebars (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `active_position` int(11) DEFAULT NULL,
  `config` text DEFAULT NULL,
  `staged_position` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE sitealizer (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `path` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_on` date DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE tags (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE text_filters (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `markup` varchar(255) DEFAULT NULL,
  `filters` text DEFAULT NULL,
  `params` text DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE triggers (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `pending_item_id` int(11) DEFAULT NULL,
  `pending_item_type` varchar(255) DEFAULT NULL,
  `due_at` datetime DEFAULT NULL,
  `trigger_method` varchar(255) DEFAULT NULL
) ENGINE=InnoDB;

CREATE TABLE users (
  `id` int(11) DEFAULT NULL auto_increment PRIMARY KEY,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `notify_via_email` tinyint(1) DEFAULT NULL,
  `notify_on_new_articles` tinyint(1) DEFAULT NULL,
  `notify_on_comments` tinyint(1) DEFAULT NULL,
  `notify_watch_my_articles` tinyint(1) DEFAULT NULL,
  `notify_via_jabber` tinyint(1) DEFAULT NULL,
  `jabber` varchar(255) DEFAULT NULL
) ENGINE=InnoDB;


-- indexes 

CREATE  INDEX `index_blacklist_patterns_on_pattern` ON blacklist_patterns (`pattern`);
CREATE  INDEX `index_categories_on_permalink` ON categories (`permalink`);
CREATE  INDEX `index_contents_on_blog_id` ON contents (`blog_id`);
CREATE  INDEX `index_contents_on_text_filter_id` ON contents (`text_filter_id`);
CREATE  INDEX `index_contents_on_published` ON contents (`published`);
CREATE  INDEX `index_feedback_on_text_filter_id` ON feedback (`text_filter_id`);
CREATE  INDEX `index_feedback_on_article_id` ON feedback (`article_id`);
CREATE  INDEX `index_page_caches_on_name` ON page_caches (`name`);
CREATE  INDEX `index_pings_on_article_id` ON pings (`article_id`);
CREATE  INDEX `index_sessions_on_sessid` ON sessions (`sessid`);

-- data 

INSERT INTO sidebars (`config`, `staged_position`, `type`, `active_position`, `blog_id`) VALUES('--- !map:HashWithIndifferentAccess 
      empty: false
      count: true', NULL, NULL, 0, NULL);
INSERT INTO sidebars (`config`, `staged_position`, `type`, `active_position`, `blog_id`) VALUES('--- !map:HashWithIndifferentAccess 
      title: Links
      body: |+
        <ul>
          <li><a href="http://www.typosphere.org" title="Typo">Typo</a></li>
          <li><a href="http://scottstuff.net" title="Scottstuff">scottstuff.net</a></li>
          <li><a href="http://www.bofh.org.uk" title="Just a Summary">Just A Summary</a></li>
          <li><a href="http://kevin.sb.org/">Kevin Ballard</a></li>
          <li><a href="http://fredericdevillamil.com">Frédéric de Villamil</a></li>
          <li><a href="http://typoforums.org" title="Typo Forums">Typo Forums</a></li>
        </ul>', NULL, NULL, 1, NULL);
INSERT INTO sidebars (`config`, `staged_position`, `type`, `active_position`, `blog_id`) VALUES('--- !map:HashWithIndifferentAccess 
      format: rss20
      trackbacks: true
      comments: true
      articles: true', NULL, NULL, 2, NULL);
INSERT INTO text_filters (`name`, `filters`, `description`, `params`, `markup`) VALUES('none', '--- []

', 'None', '--- {}

', 'none');
INSERT INTO text_filters (`name`, `filters`, `description`, `params`, `markup`) VALUES('markdown', '--- []

', 'Markdown', '--- {}

', 'markdown');
INSERT INTO text_filters (`name`, `filters`, `description`, `params`, `markup`) VALUES('smartypants', '--- 
- :smartypants
', 'SmartyPants', '--- {}

', 'none');
INSERT INTO text_filters (`name`, `filters`, `description`, `params`, `markup`) VALUES('markdown smartypants', '--- 
- :smartypants
', 'Markdown with SmartyPants', '--- {}

', 'markdown');
INSERT INTO text_filters (`name`, `filters`, `description`, `params`, `markup`) VALUES('textile', '--- []

', 'Textile', '--- {}

', 'textile');

-- schema version meta-info 

CREATE TABLE schema_info (
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB;

insert into schema_info (version) values (62);
