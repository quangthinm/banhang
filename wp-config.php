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
define('DB_NAME', 'hanglinhkien');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'aLZiqAW03t*XR,?zp{:[f7k,vRc$PghOn^]O]I[ojgbunduJ94G@S.7# ^sdO^ZE');
define('SECURE_AUTH_KEY',  ' LuG#i/G037RNvzG%W0!nERoFzTlME*OE<6mbT7MGg|p3^irN0q ~ch]n=v/><qR');
define('LOGGED_IN_KEY',    'Dzr>CM)Y^mgE!o[g+k1-7=T?X~ df] 3)KW}~]*.{v/ga8UwE5s48#Z8+;`1x%@-');
define('NONCE_KEY',        'H}EV5W^`,m~py+nV7I5^_@evt%mLzyMvP7mCw9{J]HRn*M}bVq-i.U&qO-GA_YC<');
define('AUTH_SALT',        ')r-]s,p*9Jk8.gK0vlv-{T<zZ$^/!+>XF7m^)&:sB;~5dJ6Z|!nspeo%PXQl+36}');
define('SECURE_AUTH_SALT', 'xK`^=s<zeM-1OXhU8oAa{*GtmNP{Z;Y09-j04%blAaCCTWe3z8Yr#Q(MTJMH)+f<');
define('LOGGED_IN_SALT',   'rvfugq&~Znv$eN7r;1&H5QOf^:+|q4 u@Qa*vI;PX/RI?;-2rp5l;iqZhbm|u)&1');
define('NONCE_SALT',       ';?r02,#l.dpTf-p_f)UmU;Y[`Js,8H8u,.UE5>C)$jg{>*L/k</L z,_5_@z^{cF');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
