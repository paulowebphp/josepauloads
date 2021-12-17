<?php

use Core\Page;
use Core\Validate;
use Core\Model\Lead;
use Core\Model\User;







$app->get( "/painel/login/:deslogin", function( $deslogin )
{

	$deslogin = Validate::getHash($deslogin);

	$user = new User();

	$user->getByLogin($deslogin);


	

	if( 

		User::checkLogin()
		&&
		$user->getdeslogin() !== ''
		&&
		(int)$_SESSION[User::SESSION]['iduser'] === (int)$user->getiduser()

	) 
	{

		header('Location: /painel');
		exit;	

	}//end if
	else
	{


		User::logout();
		//$_SESSION['loginValues'] = ["deslogin"=>$user->getdeslogin()];

		$_SESSION['loginValues'] = ["deslogin"=>$user->getdeslogin()];

		header('Location: /login');
		exit;	
		

	}//end else




	

});//END route














$app->get( "/painel/login", function()
{

	header('Location: /login');
	exit;	

	

});//END route









$app->get( "/login/:deslogin", function( $deslogin )
{

	$deslogin = Validate::getHash($deslogin);

	$user = new User();

	$user->getByLogin($deslogin);


	

	if( 

		User::checkLogin()
		&&
		$user->getdeslogin() !== ''
		&&
		(int)$_SESSION[User::SESSION]['iduser'] === (int)$user->getiduser()

	) 
	{

		header('Location: /painel');
		exit;	

	}//end if
	else
	{


		User::logout();
		//$_SESSION['loginValues'] = ["deslogin"=>$user->getdeslogin()];

		$_SESSION['loginValues'] = ["deslogin"=>$user->getdeslogin()];

		header('Location: /login');
		exit;	
		

	}//end else




	

});//END route














$app->post( "/login", function()
{

	
	
	
	try
	{


		User::logout();

		User::login($_POST['deslogin'], $_POST['despassword']);


		

	}//end try
	catch( Exception $e )
	{
		
		User::setError($e->getMessage());

	}//end catch

	header("Location: /painel");
	exit;


});//END route


















$app->get( "/login", function()
{

	
	
	$page = new Page();

	$page->setTpl(
		
		"login", 
		
		[

			'error'=>User::getError(),
			'errorLogin'=>(isset($_SESSION['loginValues'])) ? $_SESSION['loginValues'] : ['deslogin'=>'']
			
			

		]
	
	);//end setTpl



	

});//END route












































$app->get( "/logout", function()
{

	User::logout();

	header("Location: /login");
	exit;

});//END route





















?>