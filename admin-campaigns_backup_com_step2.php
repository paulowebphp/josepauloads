<?php 

use \Core\PageAdmin;
//use \Core\Validate;
//use \Core\MailerMachine;
//use \Core\Rule;
use \Core\Model\User;
use \Core\Model\Machine;
use \Core\Model\Campaign;
//use \Core\Model\Sequence;
//use \Core\Model\Username;






$app->get( "/557788admin/maquinas/:idmachine/campanhas/ativar/:idcampaign", function( $idmachine,$idcampaign ) 
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










	

	$campaign = new Campaign();

	$campaign->get( (int)$idcampaign );


	if( (int)$campaign->getidcampaign() === 0 )
	{


		header( "Location: /557788admin/maquinas" );
		exit;


	}//end if

	


	$campaign->setindeleted(0);
	
	

	$campaign->update();
	

	header("Location: /557788admin/maquinas/".$machine->getidmachine()."/campanhas");
	exit;



});//END route












$app->get( "/557788admin/maquinas/:idmachine/campanhas/deletar/:idcampaign", function( $idmachine,$idcampaign ) 
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



	






	

	$campaign = new Campaign();

	$campaign->get( (int)$idcampaign );




	


	if( (int)$campaign->getidcampaign() === 0 )
	{


		header( "Location: /557788admin/maquinas" );
		exit;


	}//end if

	


	$campaign->setindeleted(1);
	
	

	$campaign->update();
	

	header("Location: /557788admin/maquinas/".$machine->getidmachine()."/campanhas");
	exit;



});//END route











$app->get( "/557788admin/maquinas/:idmachine/campanhas/removidas", function( $idmachine ) 
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




	$campaign = Campaign::getByMachine( (int)$machine->getidmachine(), 1 );

	


	$page = new PageAdmin();

	$page->setTpl( 
		
		"campaigns-deleted", 
		
		array(

			'user'=>$user->getValues(),
			'campaign'=>$campaign,
			'nrtotal'=>count($campaign),
			'machine'=>$machine->getValues(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route

































































































































$app->post( "/557788admin/maquinas/:idmachine/campanhas/adicionar/:iduser", function( $idmachine,$iduser ) 
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


	$user_handler = new User();

	$user_handler->get( (int)$iduser );


	$handler = $_POST['dttrigger'];

	$dttrigger = new \DateTime($handler);


	


	$campaign = new Campaign();

	$campaign->setData([

		'iduser'=>$user_handler->getiduser(),
		'idmachine'=>$machine->getidmachine(),
		'indeleted'=>0,
		'nrcampaign'=>0,
		'dttrigger'=>$dttrigger->format("Y-m-d H:i:s")

	]);


		

	$campaign->update();



	header("Location: /557788admin/maquinas/".$machine->getidmachine()."/campanhas");
	exit;
	



});//END route



























$app->get( "/557788admin/maquinas/:idmachine/campanhas/adicionar/:iduser", function( $idmachine,$iduser ) 
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


	$user_handler = new User();

	$user_handler->get( (int)$iduser );



	$page = new PageAdmin();

	$page->setTpl( 
		
		"campaigns-create-step2", 
		
		array(

			'user'=>$user->getValues(),
			'user_handler'=>$user_handler->getValues(),
			'machine'=>$machine->getValues(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl
	



});//END route














































































































$app->get( "/557788admin/maquinas/:idmachine/campanhas/adicionar", function( $idmachine ) 
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


	//$user_handler = User::listAll();



	$user_handler = User::listAllLeads();

	


	$page = new PageAdmin();

	$page->setTpl( 
		
		"campaigns-create", 
		
		array(

			'user'=>$user->getValues(),
			'user_handler'=>$user_handler,
			'machine'=>$machine->getValues(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route























$app->get( "/557788admin/maquinas/:idmachine/campanhas", function( $idmachine ) 
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




	$campaign = Campaign::getByMachine( (int)$machine->getidmachine() );

	


	$page = new PageAdmin();

	$page->setTpl( 
		
		"campaigns", 
		
		array(

			'user'=>$user->getValues(),
			'campaign'=>$campaign,
			'nrtotal'=>count($campaign),
			'machine'=>$machine->getValues(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route












 ?>