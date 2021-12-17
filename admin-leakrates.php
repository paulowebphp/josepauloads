<?php 

use \Core\PageAdmin;
use \Core\Model\User;
use \Core\Model\Analytic;
//use \Core\Model\ROI;
use \Core\Model\LeakRate;











$app->get( "/557788admin/analytics/:idanalytic/taxa/deletar/:idleakrate", function( $idanalytic,$idleakrate ) 
{
	User::verifyLogin();


	$user = User::getFromSession();



	

	$analytic = new Analytic();

	$analytic->get( (int)$idanalytic );

	


	if( (int)$analytic->getidanalytic() === 0 )
	{


		header( "Location: /557788admin/analytics" );
		exit;


	}//end if



	$leakrate = new LeakRate();

	$leakrate->get( (int)$idleakrate );


	  

	$leakrate->delete();


	header("Location: /557788admin/analytics/".$analytic->getidanalytic()."/taxa");
		exit;

	


	

});//END route





































$app->post( "/557788admin/analytics/:idanalytic/taxa/adicionar", function( $idanalytic ) 
{
	User::verifyLogin();


	$user = User::getFromSession();



	

	$analytic = new Analytic();

	$analytic->get( (int)$idanalytic );

	


	if( (int)$analytic->getidanalytic() === 0 )
	{


		header( "Location: /557788admin/analytics" );
		exit;


	}//end if


	
    
	$nrorigin = $_POST['nrorigin'];
	$nrpresell = $_POST['nrpresell'];


	$handler = (1-($nrpresell/$nrorigin))*100;
    $vlleakrate = number_format( $handler, "2", ".", "" );




    

	$leakrate = new LeakRate();

	
	$leakrate->setData([

		'idanalytic'=>$analytic->getidanalytic(),
		'nrorigin'=>$nrorigin,
		'nrpresell'=>$nrpresell,
		'vlleakrate'=>$vlleakrate

	]);


    

	$leakrate->update();


	header("Location: /557788admin/analytics/".$analytic->getidanalytic()."/taxa");
		exit;



});//END route





















$app->get( "/557788admin/analytics/:idanalytic/taxa/adicionar", function( $idanalytic ) 
{
	User::verifyLogin();


	$user = User::getFromSession();



	

	$analytic = new Analytic();

	$analytic->get( (int)$idanalytic );

	


	if( (int)$analytic->getidanalytic() === 0 )
	{


		header( "Location: /557788admin/analytics" );
		exit;


	}//end if



	//$username = $analytic->getanalyticUsername();

	


	$page = new PageAdmin();

	$page->setTpl( 
		
		"leakrates-create", 
		
		array(

			'user'=>$user->getValues(),
			'analytic'=>$analytic->getValues(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route














































$app->post( "/557788admin/analytics/:idanalytic/taxa/:idleakrate", function( $idanalytic,$idleakrate ) 
{
	User::verifyLogin();


	$user = User::getFromSession();



	

	$analytic = new Analytic();

	$analytic->get( (int)$idanalytic );

	


	if( (int)$analytic->getidanalytic() === 0 )
	{


		header( "Location: /557788admin/analytics" );
		exit;


	}//end if



	$leakrate = new LeakRate();

	$leakrate->get( (int)$idleakrate );



	$nrorigin = $_POST['nrorigin'];
	$nrpresell = $_POST['nrpresell'];


	$handler = (1-($nrpresell/$nrorigin))*100;
    $vlleakrate = number_format( $handler, "2", ".", "" );





	
	$leakrate->setData([

		'idleakrate'=>$leakrate->getidleakrate(),
		'idanalytic'=>$analytic->getidanalytic(),
		'nrorigin'=>$nrorigin,
		'nrpresell'=>$nrpresell,
		'vlleakrate'=>$vlleakrate

	]);


    

	$leakrate->update();


	header("Location: /557788admin/analytics/".$analytic->getidanalytic()."/taxa");
		exit;






});//END route



















$app->get( "/557788admin/analytics/:idanalytic/taxa/:idleakrate", function( $idanalytic,$idleakrate ) 
{
	User::verifyLogin();


	$user = User::getFromSession();



	

	$analytic = new Analytic();

	$analytic->get( (int)$idanalytic );

	


	if( (int)$analytic->getidanalytic() === 0 )
	{


		header( "Location: /557788admin/analytics" );
		exit;


	}//end if



	$leakrate = new LeakRate();

	$leakrate->get( (int)$idleakrate );
	

    


	$page = new PageAdmin();

	$page->setTpl( 
		
		"leakrates-update", 
		
		array(

			'user'=>$user->getValues(),
			'analytic'=>$analytic->getValues(),
			'leakrate'=>$leakrate->getValues(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route
























$app->get( "/557788admin/analytics/:idanalytic/taxa", function( $idanalytic ) 
{
	User::verifyLogin();


	$user = User::getFromSession();


	
	

	$analytic = new Analytic();

	$analytic->get( (int)$idanalytic );

	


	if( (int)$analytic->getidanalytic() === 0 )
	{


		header( "Location: /557788admin/analytics" );
		exit;


	}//end if



	$leakrate = LeakRate::getByAnalytic( (int)$idanalytic );


	


	$page = new PageAdmin();

	$page->setTpl( 
		
		"leakrates", 
		
		array(

			'user'=>$user->getValues(),
			'analytic'=>$analytic->getValues(),
			'leakrate'=>$leakrate,
			'nrtotal'=>count($leakrate),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route
























 ?>