<?php 

use \Core\PageAdmin;
use \Core\Model\User;
use \Core\Model\Analytic;
use \Core\Model\ROI;











$app->get( "/557788admin/analytics/:idanalytic/roi/deletar/:idroi", function( $idanalytic,$idroi ) 
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



	$roi = new ROI();

	$roi->get( (int)$idroi );



	$roi->delete();



	header("Location: /557788admin/analytics/".$analytic->getidanalytic()."/roi");
		exit;

	


	

});//END route





































$app->post( "/557788admin/analytics/:idanalytic/roi/adicionar", function( $idanalytic ) 
{
	User::verifyLogin();


	$user = User::getFromSession();



	

	$analytic = new analytic();

	$analytic->get( (int)$idanalytic );

	


	if( (int)$analytic->getidanalytic() === 0 )
	{


		header( "Location: /557788admin/analytics" );
		exit;


	}//end if


	

	$vlcard = $_POST['vlcard'];
	$vlcard2 = $_POST['vlcard2'];
	$vlcard3 = $_POST['vlcard3'];

	$vlcard = $vlcard+$vlcard2+$vlcard3;


	
	$vlboleto = $_POST['vlboleto'];
	$vlboleto2 = $_POST['vlboleto2'];
	$vlboleto3 = $_POST['vlboleto3'];

	$vlboleto = $vlboleto+$vlboleto2+$vlboleto3;



	$vlcost = $_POST['vlcost'];
	$vlcost2 = $_POST['vlcost2'];
	$vlcost3 = $_POST['vlcost3'];

	$vlcost = $vlcost+$vlcost2+$vlcost3;



	$vltotal = $vlcard+$vlboleto;
	
	$handler1 = $vlcard/$vlcost;
	$vlcardroi = number_format( $handler1, '2', '.', '' );

	$vlcardbalance = $vlcard-$vlcost;

	$handler2 = ($vltotal)/$vlcost;
	$vlboletoroi = number_format( $handler2, '2', '.', '' );

	$vlboletobalance = $vltotal-$vlcost;


	

	$roi = new roi();

	
	$roi->setData([

		'idanalytic'=>$analytic->getidanalytic(),
		'vlcard'=>$vlcard,
		'vlboleto'=>$vlboleto,
		'vltotal'=>$vltotal,
		'vlcost'=>$vlcost,
		'vlcardbalance'=>$vlcardbalance,
		'vlcardroi'=>$vlcardroi,
		'vlboletobalance'=>$vlboletobalance,
		'vlboletoroi'=>$vlboletoroi

	]);


	

	

	$roi->update();


	header("Location: /557788admin/analytics/".$analytic->getidanalytic()."/roi");
		exit;



});//END route





















$app->get( "/557788admin/analytics/:idanalytic/roi/adicionar", function( $idanalytic ) 
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
		
		"roi-create", 
		
		array(

			'user'=>$user->getValues(),
			'analytic'=>$analytic->getValues(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route














































$app->post( "/557788admin/analytics/:idanalytic/roi/:idroi", function( $idanalytic,$idroi ) 
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



	$roi = new ROI();

	$roi->get( (int)$idroi );



	$vlcard = $_POST['vlcard'];
	$vlcard2 = $_POST['vlcard2'];
	$vlcard3 = $_POST['vlcard3'];

	$vlcard = $vlcard+$vlcard2+$vlcard3;

	$vlboleto = $_POST['vlboleto'];
	$vlboleto2 = $_POST['vlboleto2'];
	$vlboleto3 = $_POST['vlboleto3'];

	$vlboleto = $vlboleto+$vlboleto2+$vlboleto3;



	$vlcost = $_POST['vlcost'];
	$vlcost2 = $_POST['vlcost2'];
	$vlcost3 = $_POST['vlcost3'];


	$vlcost = $vlcost+$vlcost2+$vlcost3;


	$vltotal = $vlcard+$vlboleto;
	
	$handler1 = $vlcard/$vlcost;
	$vlcardroi = number_format( $handler1, '2', '.', '' );

	


	$vlcardbalance = $vlcard-$vlcost;

	
	$handler2 = ($vltotal)/$vlcost;
	$vlboletoroi = number_format( $handler2, '2', '.', '' );


	$vlboletobalance = $vltotal-$vlcost;


	
	$roi->setData([

		'idroi'=>$roi->getidroi(),
		'idanalytic'=>$analytic->getidanalytic(),
		'vlcard'=>$vlcard,
		'vlboleto'=>$vlboleto,
		'vltotal'=>$vltotal,
		'vlcost'=>$vlcost,
		'vlcardbalance'=>$vlcardbalance,
		'vlcardroi'=>$vlcardroi,
		'vlboletobalance'=>$vlboletobalance,
		'vlboletoroi'=>$vlboletoroi

	]);


	
		

	$roi->update();


	header("Location: /557788admin/analytics/".$analytic->getidanalytic()."/roi");
		exit;







});//END route



















$app->get( "/557788admin/analytics/:idanalytic/roi/:idroi", function( $idanalytic,$idroi ) 
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



	$roi = new ROI();

	$roi->get( (int)$idroi );
	


	$page = new PageAdmin();

	$page->setTpl( 
		
		"roi-update", 
		
		array(

			'user'=>$user->getValues(),
			'analytic'=>$analytic->getValues(),
			'roi'=>$roi->getValues(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route
























$app->get( "/557788admin/analytics/:idanalytic/roi", function( $idanalytic ) 
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



	$roi = ROI::getByAnalytic( (int)$idanalytic );


	


	$page = new PageAdmin();

	$page->setTpl( 
		
		"roi", 
		
		array(

			'user'=>$user->getValues(),
			'analytic'=>$analytic->getValues(),
			'roi'=>$roi,
			'nrtotal'=>count($roi),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route





































 ?>