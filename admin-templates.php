<?php 

use \Core\PageAdmin;
use \Core\PageEmail;
use \Core\Model\User;







$app->get( "/557788admin/templates/app", function() 
{
	User::verifyLogin();


	$user = User::getFromSession();



	if( !isset($_GET['destemplate']) || $_GET['destemplate'] == '' ) 
    {

        header( "Location: /557788admin/templates" );
		exit;

    }

	$page = new PageEmail([

		"header"=>false,
		"footer"=>false,

	]);

	$page->setTpl( 
		
		$_GET['destemplate'], 
		
		[

			'desnick'=>'Fulano',
			'desnamefrom'=>'Produto X',
			'user'=>$user->getData(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		]
	
	);//end setTpl

});//END route


















 
$app->get( "/557788admin/templates", function() 
{
	User::verifyLogin();


	$user = User::getFromSession();





	$path = $_SERVER["DOCUMENT_ROOT"] . DIRECTORY_SEPARATOR .
	"views" . DIRECTORY_SEPARATOR . 
	"email" . DIRECTORY_SEPARATOR;


	//$path = 'imagens/';

	$template = [];

	if( is_dir($path) )
	{
		
		$handler = dir($path);
		//$counter = 0;
		
		while( ($file = $handler->read()) !== false )
		{

			if( preg_match( '/^[\.]+$/', $file ) ) continue;
			if( preg_match( '/header.html/', $file ) ) continue;
			if( preg_match( '/footer.html/', $file ) ) continue;

			$handler2 = preg_replace('/.html/', '', $file);
				
			array_push( $template, $handler2 );

		}//end while

		$handler->close();
	
	}//end if
	else
	{
		header( "Location: /557788admin" );
		exit;
		
	}//end else
	




	$page = new PageAdmin();

	$page->setTpl( 
		
		"templates", 
		
		array(

			'user'=>$user->getData(),
			'template'=>$template,
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route


















 ?>