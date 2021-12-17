<?php 

use \Core\PageAdmin;
//use \Core\PageEmail;
//use \Core\Mailer;
//use \Core\Validate;
use \Core\Model\User;
use \Core\Model\Machine;
use \Core\Model\Username;
//use \Core\Model\Campaign;
//use \Core\Model\Sequence;






$app->get( "/557788admin/maquinas/:idmachine/contas/ativar/:idusername", function( $idmachine,$idusername ) 
{
	User::verifyLogin();


	$user = User::getFromSession();



	

	$machine = new Machine();

	$machine->get( (int)$idmachine );

	
	$username = new Username();

	$username->get( (int)$idusername );



	if( 
		
		(int)$machine->getidmachine() === 0
		||
		(int)$username->getidusername() === 0
		
		
	)
	{


		header( "Location: /557788admin/maquinas" );
		exit;


	}//end if




	$username->setindeleted(0);
	$username->update();



	header("Location: /557788admin/maquinas/".$machine->getidmachine()."/contas");
		exit;

	


	

});//END route












$app->get( "/557788admin/maquinas/:idmachine/contas/deletar/:idusername", function( $idmachine,$idusername ) 
{
	User::verifyLogin();


	$user = User::getFromSession();



	

	$machine = new Machine();

	$machine->get( (int)$idmachine );

	
	$username = new Username();

	$username->get( (int)$idusername );



	if( 
		
		(int)$machine->getidmachine() === 0
		||
		(int)$username->getidusername() === 0
		
		
	)
	{


		header( "Location: /557788admin/maquinas" );
		exit;


	}//end if




	$username->setindeleted(1);
	$username->update();



	header("Location: /557788admin/maquinas/".$machine->getidmachine()."/contas");
		exit;

	


	

});//END route

























$app->get( "/557788admin/maquinas/:idmachine/contas/removidas", function( $idmachine ) 
{
	User::verifyLogin();


	$user = User::getFromSession();


	
	

	$machine = new Machine();

	$machine->get( (int)$idmachine );

	


	if( (int)$machine->getidmachine() === 0 )
	{


		header( "Location: /557788admin/maquinas" );
		exit;


	}//end if



	$username = Username::getByMachine( (int)$idmachine, 1 );


	



	$page = new PageAdmin();

	$page->setTpl( 
		
		"usernames-deleted", 
		
		array(

			'user'=>$user->getValues(),
			'machine'=>$machine->getValues(),
			'username'=>$username,
			'nrtotal'=>count($username),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route




























$app->post( "/557788admin/maquinas/:idmachine/contas/adicionar", function( $idmachine ) 
{
	User::verifyLogin();


	$user = User::getFromSession();



	

	$machine = new Machine();

	$machine->get( (int)$idmachine );

	


	if( (int)$machine->getidmachine() === 0 )
	{


		header( "Location: /557788admin/maquinas" );
		exit;


	}//end if


	

	$nrport = $_POST['nrport'];
	$deshost = $_POST['deshost'];
	$desnamefrom = $_POST['desnamefrom'];
	$desusername = $_POST['desusername'];
	$desunpassword = $_POST['desunpassword'];


	$username = new Username();

	
	$username->setData([

		'idmachine'=>$machine->getidmachine(),
		'indeleted'=>0,
		'nrport'=>$nrport,
		'deshost'=>$deshost,
		'desnamefrom'=>$desnamefrom,
		'desusername'=>$desusername,
		'desunpassword'=>$desunpassword

	]);

	$username->update();


	header("Location: /557788admin/maquinas/".$machine->getidmachine()."/contas");
		exit;



});//END route


























$app->get( "/557788admin/maquinas/:idmachine/contas/adicionar", function( $idmachine ) 
{
	User::verifyLogin();


	$user = User::getFromSession();



	

	$machine = new Machine();

	$machine->get( (int)$idmachine );

	


	if( (int)$machine->getidmachine() === 0 )
	{


		header( "Location: /557788admin/maquinas" );
		exit;


	}//end if



	//$username = $machine->getMachineUsername();

	


	$page = new PageAdmin();

	$page->setTpl( 
		
		"usernames-create", 
		
		array(

			'user'=>$user->getValues(),
			'machine'=>$machine->getValues(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route














































$app->post( "/557788admin/maquinas/:idmachine/contas/:idusername", function( $idmachine,$idusername ) 
{
	User::verifyLogin();


	$user = User::getFromSession();



	

	$machine = new Machine();

	$machine->get( (int)$idmachine );

	


	



	$username = new Username();

	$username->get( (int)$idusername );
	


	if( 
		
		(int)$machine->getidmachine() === 0
		||
		(int)$username->getidusername() === 0
		
		
	)
	{


		header( "Location: /557788admin/maquinas" );
		exit;


	}//end if


	
	

	$nrport = $_POST['nrport'];
	$deshost = $_POST['deshost'];
	$desnamefrom = $_POST['desnamefrom'];
	$desusername = $_POST['desusername'];
	$desunpassword = $_POST['desunpassword'];



	
	$username->setData([

		'idusername'=>$username->getidusername(),
		'idmachine'=>$machine->getidmachine(),
		'indeleted'=>$username->getindeleted(),
		'nrport'=>$nrport,
		'deshost'=>$deshost,
		'desnamefrom'=>$desnamefrom,
		'desusername'=>$desusername,
		'desunpassword'=>$desunpassword

	]);

	$username->update();


	header("Location: /557788admin/maquinas/".$machine->getidmachine()."/contas");
		exit;







});//END route



















$app->get( "/557788admin/maquinas/:idmachine/contas/:idusername", function( $idmachine,$idusername ) 
{
	User::verifyLogin();


	$user = User::getFromSession();



	

	$machine = new Machine();

	$machine->get( (int)$idmachine );

	


	if( (int)$machine->getidmachine() === 0 )
	{


		header( "Location: /557788admin/maquinas" );
		exit;


	}//end if



	$username = new Username();

	$username->get( (int)$idusername );
	


	$page = new PageAdmin();

	$page->setTpl( 
		
		"usernames-update", 
		
		array(

			'user'=>$user->getValues(),
			'machine'=>$machine->getValues(),
			'username'=>$username->getValues(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route
























$app->get( "/557788admin/maquinas/:idmachine/contas", function( $idmachine ) 
{
	User::verifyLogin();


	$user = User::getFromSession();


	
	

	$machine = new Machine();

	$machine->get( (int)$idmachine );

	


	if( (int)$machine->getidmachine() === 0 )
	{


		header( "Location: /557788admin/maquinas" );
		exit;


	}//end if



	$username = Username::getByMachine( (int)$idmachine );


	



	$page = new PageAdmin();

	$page->setTpl( 
		
		"usernames", 
		
		array(

			'user'=>$user->getValues(),
			'machine'=>$machine->getValues(),
			'username'=>$username,
			'nrtotal'=>count($username),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route





























 ?>