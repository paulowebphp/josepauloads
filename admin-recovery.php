<?php 

use \Core\PageAdmin;
use \Core\Model\User;












$app->get( "/481738admin/forgot", function() 
{
	$page = new PageAdmin(
	[

		"header"=>false,
		"footer"=>false

	]);//end PageAdmin

	$page->setTpl("forgot");

});//END route






$app->post( "/481738admin/forgot", function() 
{
	$user = User::getForgot($_POST["email"]);

	header("Location: /481738admin/forgot/sent");
	exit;

});//END route






$app->get( "/481738admin/forgot/sent", function() 
{
	$page = new PageAdmin(
	[

		"header"=>false,
		"footer"=>false

	]);//end PageAdmin

	$page->setTpl("forgot-sent");
	
});//END route






$app->get( "/481738admin/forgot/reset", function() 
{
	$user = User::validForgotDecrypt($_GET["code"]);

	$page = new PageAdmin(
	[

		"header"=>false,
		"footer"=>false

	]);//end PageAdmin

	$page->setTpl(
		
		"forgot-reset", 
		
		array(

			"name"=>$user["desperson"],
			"code"=>$_GET["code"]
	
		)
	
	);//end setTpl
	
});//END route









$app->post( "/481738admin/forgot/reset", function() 
{
	$forgot = User::validForgotDecrypt($_POST["code"]);

	User::setForgotUsed($forgot["idrecovery"]);

	$user = new User();

	$user->get((int)$forgot["iduser"]);

	
	# Aula 120
	$password = User::getPasswordHash($_POST["password"]);
	
	/*
	# Aula 120
	$password = password_hash(
		
		$_POST["password"], 
		
		PASSWORD_DEFAULT, 
		
		[

			"cost"=>12

		]
	);
	*/

	$user->setPassword($password);

	$page = new PageAdmin(
	[

		"header"=>false,
		"footer"=>false

	]);//end PageAdmin

	$page->setTpl("forgot-reset-success");

});//END route











 ?>