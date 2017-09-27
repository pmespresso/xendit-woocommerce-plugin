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

define( 'FS_METHOD', 'direct' );
define( 'FTP_BASE', 'woocommerce.xendit.co' );
define( 'FTP_CONTENT_DIR', 'woocommerce.xendit.co/wp-content/' );
define( 'FTP_PLUGIN_DIR ', 'woocommerce.xendit.co/wp-content/plugins/' );
define( 'FTP_USER', 'woocomftp' );
define( 'FTP_PASS', 'W0o+ComP@5sW05rd' );
define( 'FTP_HOST', 'woocommerce.xendit.co' );
define( 'FTP_SSL', true );

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
// define('DB_NAME', 'xendit_wp_wc_db');
define('DB_NAME', 'xendit_wp_wc_db');

/** MySQL database username */
define('DB_USER', 'xendit_woo_user');

/** MySQL database password */
define('DB_PASSWORD', 'Admin@123');

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
define('AUTH_KEY',         '!jHpcvZ{Si0&];G>4W?]D5v;^Z#%H`V?iuPW66`P;/&k,.QO`A]ATOHjbDC>Rc:X');
define('SECURE_AUTH_KEY',  'xO1,I?,3dI}lB_ou{|D}gWUWu*Uoo8G:4EO)-wEzxPvSJ$(L~3&r:zq&yDt9_wgW');
define('LOGGED_IN_KEY',    'BZ(a)`,s_MRZX}nx7!2Bj9ll9C(EyAssZ?p(y~::Lu4bUgp9E|KZ8SrYP7[hYf%_');
define('NONCE_KEY',        'iyA<4rKFotRUhn:vK9]>dfQFEcd5]hBNQ[|bw1KPfg/)xoyxgVgWX*=nD#(CM{4G');
define('AUTH_SALT',        '8.<(5-Usl4V>V<ks[}|HY_c$};VpB-Fs.%H`HSmUv((ILVfTol%61|hxdjz7?a(S');
define('SECURE_AUTH_SALT', 'Lf0e`=v]!qe@f0!@D|NpQb5 B?&Z*P`rGZ;mmO#r8w,SF%9Ee97lGA#dQj.58j_6');
define('LOGGED_IN_SALT',   'KfdU5*S~BD$.esmZGfpp@M7 > ,eFT[A(FG@420_XBSZKQNsO[lHRF]Zx/1!}{@;');
define('NONCE_SALT',       'pf-vAm39|-9E~njS5U{*g{Y)zwvc~qVz2[uP0DJhF`n]?ZJ|;,aCXan#+7<^}l`P');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'xen_';

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
define('WP_DEBUG', true);
define('WP_ALLOW_REPAIR', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
