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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'demo' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'YycD=:Cl=VZL2Nixy?YVn1bt>B/*oT%*/PZ$WT;y$Cc@_1RP%5N*c^xGBLQ]rhpo' );
define( 'SECURE_AUTH_KEY',  'NN3&ohv2r*gj]3Tc?]R,+<2c&5 oo~mc02c-Y&Qk..|@[Q+xU2ike.7r7][Am]}c' );
define( 'LOGGED_IN_KEY',    'qPMBO#H)YL%Z4V{h` hBP+)U@/v:poU@+OpFgGf&#v152ZL{6SEnlc6Et9Y}R}fd' );
define( 'NONCE_KEY',        'cY-6>OiQik>jpEw15p>9UCysKd$7?caxV,hb#}+g]C2ht6^jo(p1&p=g8*/^*( <' );
define( 'AUTH_SALT',        'TaB>( z;)J24 k2-a$sX6D,%g$ARVCu:#b.IPX.UBZ=,!Tk|;ybM3y[cg_CCezKI' );
define( 'SECURE_AUTH_SALT', 'm2 <Hg{o-YTwSFV{Gi8+NTDY;0}.:Z9g(RTKhNE<`^~P|9.DQRf@t6}GM-GQM6$.' );
define( 'LOGGED_IN_SALT',   'ZZ^i+G K(ah/mJ)C*9}GhN{9.5@k&<:6S[#C}9Bk_6D6;,/[{:oR^K@K %ErdenI' );
define( 'NONCE_SALT',       'ELXrq{]a1of%S</xWlKsi2V(H>{701i6l7Q}f{/*V*qzl0mL,1*oY/x#BLI6S{|W' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
