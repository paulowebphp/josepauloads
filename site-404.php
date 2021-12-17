<?php

use Core\Page;





$app->get( "/:param1", function( $param1 )
{
	
	
	if( 
		
		isset($param1)
		&&
		!Page::checkSitePage($param1)
	)
	{
		
		

		//header('HTTP/1.0 404 Not Found');

		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

		//header("Status: 404 Not Found");

		//$_SERVER['REDIRECT_STATUS'] = 404;

		//http_response_code(404);

		//header('Location: /404');
		//exit;


		$page = new Page(

			[

				'header'=>true,
				'footer'=>true

			]

		);
		
		//require_once( $_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'. DIRECTORY_SEPARATOR.'404.html' );//require_once
		
		//$handle = curl_init($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'.DIRECTORY_SEPARATOR.'404.html');

		//curl_exec($handle);


		//$page->setTpl("404");//end setTpl

		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;

		

	}//end if


    

});//END method











$app->get( "/:param1/:param2", function( $param1, $param2 )
{
	

	
	if( 
		
		isset($param1)
		&&
		!Page::checkSitePage($param1)
	)
	{
		
		

		//header('HTTP/1.0 404 Not Found');

		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

		//header("Status: 404 Not Found");

		//$_SERVER['REDIRECT_STATUS'] = 404;

		//http_response_code(404);

		//header('Location: /404');
		//exit;


		$page = new Page(

			[

				'header'=>true,
				'footer'=>true

			]

		);
		
		//require_once( $_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'. DIRECTORY_SEPARATOR.'404.html' );//require_once
		
		//$handle = curl_init($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'.DIRECTORY_SEPARATOR.'404.html');

		//curl_exec($handle);


		//$page->setTpl("404");//end setTpl

		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;

		

	}//end if





});//END 





















$app->get( "/:param1/:param2/:param3", function( $param1, $param2, $param3 )
{


	
	
	if( 
		
		isset($param1)
		&&
		!Page::checkSitePage($param1)
	)
	{
		
		

		//header('HTTP/1.0 404 Not Found');

		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

		//header("Status: 404 Not Found");

		//$_SERVER['REDIRECT_STATUS'] = 404;

		//http_response_code(404);

		//header('Location: /404');
		//exit;


		$page = new Page(

			[

				'header'=>true,
				'footer'=>true

			]

		);
		
		//require_once( $_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'. DIRECTORY_SEPARATOR.'404.html' );//require_once
		
		//$handle = curl_init($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'.DIRECTORY_SEPARATOR.'404.html');

		//curl_exec($handle);


		//$page->setTpl("404");//end setTpl

		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;

		

	}//end if




    

});//END 















$app->get( "/:param1/:param2/:param3/:param4", function( $param1, $param2, $param3, $param4 )
{


	
	
	if( 
		
		isset($param1)
		&&
		!Page::checkSitePage($param1)
	)
	{
		
		

		//header('HTTP/1.0 404 Not Found');

		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

		//header("Status: 404 Not Found");

		//$_SERVER['REDIRECT_STATUS'] = 404;

		//http_response_code(404);

		//header('Location: /404');
		//exit;


		$page = new Page(

			[

				'header'=>true,
				'footer'=>true

			]

		);
		
		//require_once( $_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'. DIRECTORY_SEPARATOR.'404.html' );//require_once
		
		//$handle = curl_init($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'.DIRECTORY_SEPARATOR.'404.html');

		//curl_exec($handle);


		//$page->setTpl("404");//end setTpl

		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;

		

	}//end if




    

});//END 


























$app->get( "/:param1/:param2/:param3/:param4/:param5", function( $param1, $param2, $param3, $param4,$param5 )
{


	
	
	if( 
		
		isset($param1)
		&&
		!Page::checkSitePage($param1)
	)
	{
		
		

		//header('HTTP/1.0 404 Not Found');

		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

		//header("Status: 404 Not Found");

		//$_SERVER['REDIRECT_STATUS'] = 404;

		//http_response_code(404);

		//header('Location: /404');
		//exit;


		$page = new Page(

			[

				'header'=>true,
				'footer'=>true

			]

		);
		
		//require_once( $_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'. DIRECTORY_SEPARATOR.'404.html' );//require_once
		
		//$handle = curl_init($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'.DIRECTORY_SEPARATOR.'404.html');

		//curl_exec($handle);


		//$page->setTpl("404");//end setTpl

		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;

		

	}//end if




    

});//END 
































$app->get( "/:param1/:param2/:param3/:param4/:param5/:param6", function( $param1, $param2, $param3, $param4,$param5, $param6 )
{


	
	
	if( 
		
		isset($param1)
		&&
		!Page::checkSitePage($param1)
	)
	{
		
		

		//header('HTTP/1.0 404 Not Found');

		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

		//header("Status: 404 Not Found");

		//$_SERVER['REDIRECT_STATUS'] = 404;

		//http_response_code(404);

		//header('Location: /404');
		//exit;


		$page = new Page(

			[

				'header'=>true,
				'footer'=>true

			]

		);
		
		//require_once( $_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'. DIRECTORY_SEPARATOR.'404.html' );//require_once
		
		//$handle = curl_init($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'.DIRECTORY_SEPARATOR.'404.html');

		//curl_exec($handle);


		//$page->setTpl("404");//end setTpl

		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;

		

	}//end if




    

});//END 



























$app->get( "/:param1/:param2/:param3/:param4/:param5/:param6/:param7", function( $param1, $param2, $param3, $param4,$param5, $param6, $param7 )
{


	
	
	if( 
		
		isset($param1)
		&&
		!Page::checkSitePage($param1)
	)
	{
		
		

		//header('HTTP/1.0 404 Not Found');

		header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");

		//header("Status: 404 Not Found");

		//$_SERVER['REDIRECT_STATUS'] = 404;

		//http_response_code(404);

		//header('Location: /404');
		//exit;


		$page = new Page(

			[

				'header'=>true,
				'footer'=>true

			]

		);
		
		//require_once( $_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'. DIRECTORY_SEPARATOR.'404.html' );//require_once
		
		//$handle = curl_init($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR .'views'.DIRECTORY_SEPARATOR.'404.html');

		//curl_exec($handle);


		//$page->setTpl("404");//end setTpl

		$page->setTpl(

				
			"404"
		
		);//end setTpl

		exit;

		

	}//end if




    

});//END 






?>