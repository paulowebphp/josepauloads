<?php

use Core\PagePanel;
use Core\Maintenance;
use Core\Rule;
use Core\Validate;
use Core\Model\User;
use Core\Model\Course;












$app->get( "/painel/pdo-starter/:module/:hash", function($module,$hash)
{
	

	if( Maintenance::checkMaintenance() )
	{	

		$maintenance = new Maintenance();

		$maintenance->getMaintenance();

		

		User::setError($maintenance->getdesdescription());
		header("Location: /login");
		exit;
		
	}//end if


	
	

	

	User::verifyLogin(false);

	$user = User::getFromSession();


	/*
	
	echo '<pre>';
	var_dump($_SESSION);
	var_dump(User::checkLogin());
	var_dump($user->getValues());
	exit;
	
	*/

	//$validate = User::validatePlanDashboard( $user );


	


	$course = Course::getPDO();
	

	
	$idclass = getHash($hash);

	if( 
		
		
		!isset( $course[$module] ) 
		||
		!isset( $course[$module]['class'][$idclass] ) 
	
	
	)
	{

		header("Location: /painel");
		exit;


	}//end if


	$desvideo = $course[$module]['class'][$idclass]['desvideo'];
	$desvideocode = $course[$module]['class'][$idclass]['desvideocode'];


	


	$page = new PagePanel();


	

	$page->setTpl(
		

	 
		"course", 
		
		[

			'desvideo'=>$desvideo,
			'desvideocode'=>$desvideocode,
			'module'=>$module,
			'request_uri'=>"/painel/".Rule::URI_LANDING5."/".$module."/".$hash,
			'ebook'=>Rule::EBOOK_NAME_LEAD5,
			'course'=>$course,
			'user'=>$user->getValues(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		]
	
	);//end setTpl

});//END route





























$app->get( "/painel", function()
{
	

	if( Maintenance::checkMaintenance() )
	{	

		$maintenance = new Maintenance();

		$maintenance->getMaintenance();

		

		User::setError($maintenance->getdesdescription());
		header("Location: /login");
		exit;
		
	}//end if



	
	
	

	User::verifyLogin(false);

	$user = User::getFromSession();


	/*
	
	echo '<pre>';
	var_dump($_SESSION);
	var_dump(User::checkLogin());
	var_dump($user->getValues());
	exit;
	
	*/

	//$validate = User::validatePlanDashboard( $user );


	


	$course = Course::getPDO();

	$module = 0;
	$idclass = 0;
	

	$desvideo = $course[$module]['class'][$idclass]['desvideo'];
	$desvideocode = $course[$module]['class'][$idclass]['desvideocode'];



	$page = new PagePanel();


	

	$page->setTpl(
		

	 
		"index", 
		
		[

			'desvideo'=>$desvideo,
			'desvideocode'=>$desvideocode,
			'module'=>0.1,
			'request_uri'=>null,
			'ebook'=>Rule::EBOOK_NAME_LEAD5,
			'course'=>$course,
			'user'=>$user->getValues(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		]
	
	);//end setTpl

});//END route














?>