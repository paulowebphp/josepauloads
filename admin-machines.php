<?php 

use \Core\PageAdmin;
//use \Core\PageEmail;
//use \Core\Mailer;
//use \Core\Validate;
use \Core\Model\User;
use \Core\Model\Machine;
//use \Core\Model\Username;
//use \Core\Model\Campaign;
//use \Core\Model\Sequence;






$app->get( "/557788admin/maquinas/ativar/:idmachine", function( $idmachine ) 
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

	$machine->setindeleted(0);
	$machine->update();


	header("Location: /557788admin/maquinas");
	exit;

	

});//END route
















$app->get( "/557788admin/maquinas/deletar/:idmachine", function( $idmachine ) 
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

	$machine->setindeleted(1);
	$machine->update();


	header("Location: /557788admin/maquinas");
	exit;

	

});//END route
























 
$app->get( "/557788admin/maquinas/removidas", function() 
{
	User::verifyLogin();


	$user = User::getFromSession();



	

	$machine = Machine::listAll(1);






	$page = new PageAdmin();

	$page->setTpl( 
		
		"machines-deleted", 
		
		array(

			'user'=>$user->getData(),
			'machine'=>$machine,
			'nrtotal'=>count($machine),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route


























$app->post( "/557788admin/maquinas/adicionar", function() 
{
	User::verifyLogin();


	$user = User::getFromSession();

	$desmachine = $_POST['desmachine'];
	$desmachineabbr = $_POST['desmachineabbr'];




	$machine = new Machine();

	$machine->setData([

		'indeleted'=>0,
		'inposition'=>0,
		'desmachine'=>$desmachine,
		'desmachineabbr'=>$desmachineabbr

	]);
	
	

	$machine->update();

	header("Location: /557788admin/maquinas");
	exit;


	

});//END route























$app->get( "/557788admin/maquinas/adicionar", function() 
{
	User::verifyLogin();


	$user = User::getFromSession();



	




	$page = new PageAdmin();

	$page->setTpl( 
		
		"machines-create", 
		
		array(

			'user'=>$user->getData(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route














$app->post( "/557788admin/maquinas/:idmachine", function( $idmachine ) 
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


	$inposition = $_POST['inposition'];
	$desmachine = $_POST['desmachine'];
	$desmachineabbr = $_POST['desmachineabbr'];



	


	$machine->setData([

		'idmachine'=>$machine->getidmachine(),
		'indeleted'=>$machine->getindeleted(),
		'inposition'=>$inposition,
		'desmachine'=>$desmachine,
		'desmachineabbr'=>$desmachineabbr

	]);
	

	


	

	$machine->update();

	header("Location: /557788admin/maquinas");
	exit;


});//END route



























$app->get( "/557788admin/maquinas/:idmachine", function( $idmachine ) 
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




	$page = new PageAdmin();

	$page->setTpl( 
		
		"machines-update", 
		
		array(

			'user'=>$user->getData(),
			'machine'=>$machine->getValues(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route




























 
$app->get( "/557788admin/maquinas", function() 
{
	User::verifyLogin();


	$user = User::getFromSession();



	

	$machine = Machine::listAll();




	$page = new PageAdmin();

	$page->setTpl( 
		
		"machines", 
		
		array(

			'user'=>$user->getData(),
			'machine'=>$machine,
			'nrtotal'=>count($machine),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route












 ?>