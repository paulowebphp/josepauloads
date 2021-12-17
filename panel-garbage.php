<?php

use Core\Maintenance;
use Core\Page;
use Core\PagePanel;
use Core\Model\User;





































$app->get( "/panel/:param1", function( $param1 )
{

    

    User::verifyLogin(false);

    $user = User::getFromSession();
    
    


	
	if( Maintenance::checkMaintenance() )
	{	

		$maintenance = new Maintenance();

		$maintenance->getMaintenance();

		

		User::setError($maintenance->getdesdescription());
		header("Location: /login");
		exit;
		
	}//end if
	elseif( 
		
		
		isset($param1)
		&&
		!Page::checkPanelPage($param1)
	)
	{


		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

        
    


		$page = new PagePanel();
		
		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;



	}//end if
	else
	{
		
		

		//header('HTTP/1.0 404 Not Found');

		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

		//header("Status: 404 Not Found");

		//$_SERVER['REDIRECT_STATUS'] = 404;

		//http_response_code(404);

		//header('Location: /404');
		//exit;


		$page = new Page();
		
		//require_once( $_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'. DIRECTORY_SEPARATOR.'404.html' );//require_once
		
		//$handle = curl_init($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'.DIRECTORY_SEPARATOR.'404.html');

		//curl_exec($handle);


		//$page->setTpl("404");//end setTpl

		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;

		

	}//end elseif




    

});//END



































$app->get( "/panel/:param1/:param2", function( $param1, $param2 )
{

    

    User::verifyLogin(false);

    $user = User::getFromSession();
    
    


	
	if( Maintenance::checkMaintenance() )
	{	

		$maintenance = new Maintenance();

		$maintenance->getMaintenance();

		

		User::setError($maintenance->getdesdescription());
		header("Location: /login");
		exit;
		
	}//end if
	elseif( 
		
		
		isset($param1)
		&&
		!Page::checkPanelPage($param1)
	)
	{


		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

        
    


		$page = new PagePanel();
		
		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;



	}//end if
	else
	{
		
		

		//header('HTTP/1.0 404 Not Found');

		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

		//header("Status: 404 Not Found");

		//$_SERVER['REDIRECT_STATUS'] = 404;

		//http_response_code(404);

		//header('Location: /404');
		//exit;


		$page = new Page();
		
		//require_once( $_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'. DIRECTORY_SEPARATOR.'404.html' );//require_once
		
		//$handle = curl_init($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'.DIRECTORY_SEPARATOR.'404.html');

		//curl_exec($handle);


		//$page->setTpl("404");//end setTpl

		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;

		

	}//end elseif




    

});//END 


















$app->get( "/panel/:param1/:param2/:param3", function( $param1, $param2, $param3 )
{

    

    User::verifyLogin(false);

    $user = User::getFromSession();
    
    


	
	if( Maintenance::checkMaintenance() )
	{	

		$maintenance = new Maintenance();

		$maintenance->getMaintenance();

		

		User::setError($maintenance->getdesdescription());
		header("Location: /login");
		exit;
		
	}//end if
	elseif( 
		
		
		isset($param1)
		&&
		!Page::checkPanelPage($param1)
	)
	{


		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

        
    


		$page = new PagePanel();
		
		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;



	}//end if
	else
	{
		
		

		//header('HTTP/1.0 404 Not Found');

		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

		//header("Status: 404 Not Found");

		//$_SERVER['REDIRECT_STATUS'] = 404;

		//http_response_code(404);

		//header('Location: /404');
		//exit;


		$page = new Page();
		
		//require_once( $_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'. DIRECTORY_SEPARATOR.'404.html' );//require_once
		
		//$handle = curl_init($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'.DIRECTORY_SEPARATOR.'404.html');

		//curl_exec($handle);


		//$page->setTpl("404");//end setTpl

		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;

		

	}//end elseif




    

});//END 





 












$app->get( "/panel/:param1/:param2/:param3/:param4", function( $param1, $param2, $param3, $param4 )
{

    

    User::verifyLogin(false);

    $user = User::getFromSession();
    
    


	
	if( Maintenance::checkMaintenance() )
	{	

		$maintenance = new Maintenance();

		$maintenance->getMaintenance();

		

		User::setError($maintenance->getdesdescription());
		header("Location: /login");
		exit;
		
	}//end if
	elseif( 
		
		
		isset($param1)
		&&
		!Page::checkPanelPage($param1)
	)
	{


		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

        
    


		$page = new PagePanel();
		
		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;



	}//end if
	else
	{
		
		

		//header('HTTP/1.0 404 Not Found');

		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

		//header("Status: 404 Not Found");

		//$_SERVER['REDIRECT_STATUS'] = 404;

		//http_response_code(404);

		//header('Location: /404');
		//exit;


		$page = new Page();
		
		//require_once( $_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'. DIRECTORY_SEPARATOR.'404.html' );//require_once
		
		//$handle = curl_init($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'.DIRECTORY_SEPARATOR.'404.html');

		//curl_exec($handle);


		//$page->setTpl("404");//end setTpl

		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;

		

	}//end elseif




    

});//END 



































$app->get( "/panel/:param1/:param2/:param3/:param4/:param5", function( $param1, $param2, $param3, $param4, $param5 )
{

    

    User::verifyLogin(false);

    $user = User::getFromSession();
    
    


	
	if( Maintenance::checkMaintenance() )
	{	

		$maintenance = new Maintenance();

		$maintenance->getMaintenance();

		

		User::setError($maintenance->getdesdescription());
		header("Location: /login");
		exit;
		
	}//end if
	elseif( 
		
		
		isset($param1)
		&&
		!Page::checkPanelPage($param1)
	)
	{


		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

        
    


		$page = new PagePanel();
		
		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;



	}//end if
	else
	{
		
		

		//header('HTTP/1.0 404 Not Found');

		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

		//header("Status: 404 Not Found");

		//$_SERVER['REDIRECT_STATUS'] = 404;

		//http_response_code(404);

		//header('Location: /404');
		//exit;


		$page = new Page();
		
		//require_once( $_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'. DIRECTORY_SEPARATOR.'404.html' );//require_once
		
		//$handle = curl_init($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'.DIRECTORY_SEPARATOR.'404.html');

		//curl_exec($handle);


		//$page->setTpl("404");//end setTpl

		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;

		

	}//end elseif




    

});//END

































$app->get( "/panel/:param1/:param2/:param3/:param4/:param5/:param6", function( $param1, $param2, $param3, $param4, $param5, $param6 )
{

    

    User::verifyLogin(false);

    $user = User::getFromSession();
    
    


	
	if( Maintenance::checkMaintenance() )
	{	

		$maintenance = new Maintenance();

		$maintenance->getMaintenance();

		

		User::setError($maintenance->getdesdescription());
		header("Location: /login");
		exit;
		
	}//end if
	elseif( 
		
		
		isset($param1)
		&&
		!Page::checkPanelPage($param1)
	)
	{


		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

        
    


		$page = new PagePanel();
		
		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;



	}//end if
	else
	{
		
		

		//header('HTTP/1.0 404 Not Found');

		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

		//header("Status: 404 Not Found");

		//$_SERVER['REDIRECT_STATUS'] = 404;

		//http_response_code(404);

		//header('Location: /404');
		//exit;


		$page = new Page();
		
		//require_once( $_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'. DIRECTORY_SEPARATOR.'404.html' );//require_once
		
		//$handle = curl_init($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'.DIRECTORY_SEPARATOR.'404.html');

		//curl_exec($handle);


		//$page->setTpl("404");//end setTpl

		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;

		

	}//end elseif




    

});//END 




























$app->get( "/panel/:param1/:param2/:param3/:param4/:param5/:param6/:param7", function( $param1, $param2, $param3, $param4, $param5, $param6, $param7 )
{

    

    User::verifyLogin(false);

    $user = User::getFromSession();
    
    


	
	if( Maintenance::checkMaintenance() )
	{	

		$maintenance = new Maintenance();

		$maintenance->getMaintenance();

		

		User::setError($maintenance->getdesdescription());
		header("Location: /login");
		exit;
		
	}//end if
	elseif( 
		
		
		isset($param1)
		&&
		!Page::checkPanelPage($param1)
	)
	{


		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

        
    


		$page = new PagePanel();
		
		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;



	}//end if
	else
	{
		
		

		//header('HTTP/1.0 404 Not Found');

		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

		//header("Status: 404 Not Found");

		//$_SERVER['REDIRECT_STATUS'] = 404;

		//http_response_code(404);

		//header('Location: /404');
		//exit;


		$page = new Page();
		
		//require_once( $_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'. DIRECTORY_SEPARATOR.'404.html' );//require_once
		
		//$handle = curl_init($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'.DIRECTORY_SEPARATOR.'404.html');

		//curl_exec($handle);


		//$page->setTpl("404");//end setTpl

		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;

		

	}//end elseif




    

});//END 




?>