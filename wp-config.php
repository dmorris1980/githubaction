<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'PiyOFT9vut9eihHBjgCldZFP6lfd+qqkAMMKOoHZ6va3GmRk1n2OJIRb9ZDzFsqjBJxhy1roUOTT5eFNjsALyQ==');
define('SECURE_AUTH_KEY',  'BXvTGfGjwtAKbY+Vu/ud3fGRePyUudcDgrqpmAoA+g177c/gmzmO9nS/B6ANTNve4PghBG6BGuqB49DvSOz+NA==');
define('LOGGED_IN_KEY',    'SZqplMOKiZu907/MCrebUpygWY/yMv5XPun+HD8bosESzcA8frU3Zf/bE9MQFLAillu96Cu5MuCLRclQRfJU2Q==');
define('NONCE_KEY',        'EacYGxjfweDLHOQdWtuiB+bAlcuD+jSZqFMEkEkEoKmKf8VIX55yNovO7fySOXtxBCgIFFAHVXvE0ph/yj6jSQ==');
define('AUTH_SALT',        'eGBiRR8/4Mvwi2rEG5GfCz6j3uU3BSJLg+hJQmyXQ6As8NIb5s2Pw7Rmqk47OKdXbVZLcEWRjFeEesB6kcubpw==');
define('SECURE_AUTH_SALT', 'tnEn7zXjDOfgg6a/zz0gQzof5RulJUexkziVFKUg9Rb19g9rTm+P1BCgeyj56iXHT0gc5wWAEIUuEaeFgT6GmA==');
define('LOGGED_IN_SALT',   'SQAGGjI+1vOh8/sVMMHSgLjBfMojI2YYMBPw0p674r7hXz7ZYNoepMaC2iOShJMI17pzZvYd0dkEGPOCbSyz8g==');
define('NONCE_SALT',       'a5sI3YFzsKG7BzHCh63ycB1k/+MOJ3PwWISNHGYN3XCkXeWYza/NGLEwXvGOu7RBGDLf2b+8pBT5iG6TK0en0w==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
