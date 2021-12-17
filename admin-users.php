<?php 

use \Core\PageAdmin;
use \Core\Mailer;
use \Core\Validate;
use \Core\Rule;
use \Core\Model\User;
use \Core\Model\Machine;











$app->get( "/557788admin/usuarios/deletar/:iduser", function( $iduser ) 
{
	User::verifyLogin();


	$user = User::getFromSession();



	$user_handler = new User();

	$user_handler->get( (int)$iduser );





	if( (int)$user_handler->getiduser() === 0 )
	{

		header("Location: /557788admin/usuarios");
		exit;


	}//end if

	


	$user_handler->delete();


	header("Location: /557788admin/usuarios");
	exit;




});//END route

























































































	$app->post( "/557788admin/usuarios/adicionar", function() 
	{
		User::verifyLogin();


		$user = User::getFromSession();



		




		$despassword = Rule::DEFAULT_LEAD_PASSWORD;
		$deslogin = $_POST['deslogin'];
		$desperson = $_POST['desperson'];





		if( User::checkLoginExists( $deslogin ) )
	    {

			header("Location: /557788admin/usuarios");
			exit;

	    }//end if







		$nameArray = explode(' ', $desperson);
		$desnick = $nameArray[0];



		$user_handler = new User();

		


		
		

		$user_handler->setData([

			'deslogin'=>$deslogin,
			'despassword'=>User::getPasswordHash( $despassword ),
			'instatus'=>1,
			'inautostatus'=>1,
			'inadmin'=>0,
			'inlead'=>1,
			'inseller'=>0,
			'inbuyer'=>0,
			'inregister'=>0,
			'inaccount'=>0,
			'interms'=>0,
			'desipterms'=>$_SERVER['REMOTE_ADDR'],
			'dtterms'=>NULL,

			'desperson'=>$desperson,
			'desnick'=>$desnick,
			'nrcountryarea'=>NULL,
			'nrddd'=>NULL,
			'nrphone'=>NULL,
			'intypedoc'=>0,
			'desdocument'=>NULL,
			'desphoto'=>Rule::DEFAULT_PHOTO,
			'desextension'=>Rule::DEFAULT_PHOTO_EXTENSION,
			'dtbirth'=>NULL


		]);//end setData



		$user_handler->update();



		header("Location: /557788admin/usuarios");
		exit;



	});//END route












	$app->get( "/557788admin/usuarios/adicionar", function() 
	{
		User::verifyLogin();


		$user = User::getFromSession();







		$page = new PageAdmin();

		$page->setTpl( 
			
			"users-create", 
			
			array(

				'user'=>$user->getData(),
				'success'=>User::getSuccess(),
				'error'=>User::getError()

			)
		
		);//end setTpl

	});//END route
































$app->post( "/557788admin/usuarios/:iduser", function( $iduser ) 
{
	User::verifyLogin();


	$user = User::getFromSession();

	




	$user_handler = new User();

	$user_handler->get( (int)$iduser );



	if( (int)$user_handler->getiduser() === 0 )
	{

		header("Location: /557788admin/usuarios");
		exit;


	}//end if




	$deslogin = $_POST['deslogin'];
	$desperson = $_POST['desperson'];
	$desnick = $_POST['desnick'];






	

	$user_handler->setdeslogin( $deslogin );
	$user_handler->setdesperson( $desperson );
	$user_handler->setdesnick( $desnick );



	$user_handler->update();



	header("Location: /557788admin/usuarios");
	exit;



});//END route























$app->get( "/557788admin/usuarios/:iduser", function( $iduser ) 
{
	User::verifyLogin();


	$user = User::getFromSession();



	$user_handler = new User();

	$user_handler->get( (int)$iduser );


	if( (int)$user_handler->getiduser() === 0 )
	{

		header("Location: /557788admin/usuarios");
		exit;


	}//end if
	


	$page = new PageAdmin();

	$page->setTpl( 
		
		"users-update", 
		
		array(

			'user'=>$user->getValues(),
			'user_handler'=>$user_handler->getValues(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route















$app->post( "/557788admin/usuarios", function() 
{
	User::verifyLogin();


	$user = User::getFromSession();



	
    $lead = User::listAll();







    foreach ($lead as $row)
    {



        $mailer = new Mailer(

        
            $_POST['subject'],
    
            $_POST['tplname'],
    
            array(
    
                'deslogin'=>Validate::setHash($row['deslogin'])
    
            ),
    
            $row['deslogin'],

            $row['deslogin']
    
    
        );
    
    
        $mailer->send();



    }//end foreach




    
    User::setSuccess('Campanha Enviada');
	header("Location: /557788admin");
	exit;


});//END route





















 
$app->get( "/557788admin/usuarios", function() 
{
	User::verifyLogin();


	$user = User::getFromSession();







	$search = (isset($_GET['search'])) ? $_GET['search'] : "";

	$page = (isset($_GET['page'])) ? (int)$_GET['page'] : 1;

	if( $search != '' )
	{

		$pagination = User::getPageSearch($search, $page, 20);

	}//end if
	else
	{
		# Aula 126
		// $users = User::listAll();

		# Aula 126
		$pagination = User::getPage($page, 20);

	}//end else




	




	$pages = [];

	for( $x=0; $x < $pagination['pages']; $x++ )
	{ 
		# code...
		array_push( $pages, 
		
			[

				'href'=>'/557788admin/usuarios?'.http_build_query(
					
					[

						'page'=>$x+1,
						'search'=>$search

					]
				
				),

				'text'=>$x+1

			]
		
		);//end array_push

	}//end for




	






	$page = new PageAdmin();

	$page->setTpl( 
		
		"users", 
		
		array(

			"users"=>$pagination['data'],
			"search"=>$search,
			"pages"=>$pages,
			"nrtotal"=>$pagination['nrtotal'],
			'user'=>$user->getData(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route












 ?>