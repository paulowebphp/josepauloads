<?php 
session_start();

require_once("vendor/autoload.php");

use \Slim\Slim;

$app = new Slim();

$app->config('debug', true);


require_once("functions.php");


require_once("admin-templates.php");
require_once("admin-leakrates.php");
require_once("admin-roi.php");
require_once("admin-analytics.php");
require_once("admin-sequences.php");
require_once("admin-campaigns.php");
require_once("admin-usernames.php");
require_once("admin-machines.php");
require_once("admin-recovery.php");
require_once("admin-login.php");
require_once("admin-maintenance.php");
require_once("admin-users.php");
require_once("admin.php");


require_once("panel-reset.php");
require_once("panel.php");
require_once("panel-garbage.php");

require_once("site-login.php");
require_once("site-recovery.php");
require_once("site-lead5.php");
require_once("site-landing6.php");
require_once("site-landing5.php");
require_once("site-landing4.php");
require_once("site-landing3.php");
require_once("site-landing2.php");
require_once("site-landing1.php");
require_once("site.php");


require_once("site-404.php");




# APP RUN
$app->run();


 ?>