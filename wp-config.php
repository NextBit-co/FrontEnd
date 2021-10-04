<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp_nextbit' );

/** MySQL database username */
define( 'DB_USER', 'mistersig' );

/** MySQL database password */
define( 'DB_PASSWORD', '022777885' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'M1=z<p#,p!8[A<4I! (j`8^fjhGl6tpa8%z{GfE_C)$1{4I48bSWV*F+iK rd7`i' );
define( 'SECURE_AUTH_KEY',  '&Tm5I%]8F[]s[4iRv}.B=1q!dPz6(v)dkSf)_@w>+PsM;OdT9$CrUqAHHuL F(2Q' );
define( 'LOGGED_IN_KEY',    '*@p{9)|Kyl9Z!Q^fcA7woHxhds|Vf~a<_dn>FuP*/1t+pB|Py#OYv[6L_;^5*4Hs' );
define( 'NONCE_KEY',        'w3_YiT!DnS7{aoG*J3@!5>^OkBiH4Wo<Vqd<6<!gp#t~|#W0FP|aIwSG+FVtNAzg' );
define( 'AUTH_SALT',        '.:b+`wU ,>W[@!KY.&4V&X1j-c<IvC?8Ojz)RWO/k0D,oGRgktSdS.hQ|9PR|Mtg' );
define( 'SECURE_AUTH_SALT', '+}{ONL!+bFeK@.o4c*k$FiaOgN}<P;te(l)erp$!ZE3dCi&Q}@2~0T)<M3 $kug5' );
define( 'LOGGED_IN_SALT',   'M=t:%Wt2`2t)^yyJ&%+!`[`,Y)6nL3|t80E_vsu`2f<gTIV5eEeA^OI C}ek>jp;' );
define( 'NONCE_SALT',       'TW|WmD @.,uCSwkVG/vn+JHm^Y!Pjsbu4 }[Li*$(zx`_B(H*;7kG%m:Z@]ql9N}' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
