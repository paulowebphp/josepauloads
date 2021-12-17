<?php 

use \Core\PageAdmin;
use \Core\Model\User;
use \Core\Model\Analytic;
use Core\Model\LeakRate;
use \Core\Model\ROI;




$app->get( "/557788admin/analytics/ativar/:idanalytic", function( $idanalytic ) 
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

	$analytic->setindeleted(0);
	$analytic->update();


	header("Location: /557788admin/analytics");
	exit;

	

});//END route







$app->get( "/557788admin/analytics/deletar/:idanalytic", function( $idanalytic ) 
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

	$analytic->setindeleted(1);
	$analytic->update();


	header("Location: /557788admin/analytics");
	exit;

	

});//END route



















 
$app->get( "/557788admin/analytics/removidos", function() 
{
	User::verifyLogin();


	$user = User::getFromSession();



	

	$analytic = Analytic::listAll(1);




	$leakrate = LeakRate::getLastByAnalytic();
	$roi = ROI::getLastByAnalytic();
	$roiTotals = ROI::getTotals();


	$roiTotal = 0;

	if( count($roiTotals) > 0 ) $roiTotal = $roiTotals['vlcardtotal'] / $roiTotals['vlcosttotal'];
	
	






	$page = new PageAdmin();

	$page->setTpl( 
		
		"analytics-deleted", 
		
		array(

			'user'=>$user->getData(),
			'analytic'=>$analytic,
			'leakrate'=>$leakrate,
			'roi'=>$roi,
			'roiTotals'=>$roiTotals,
			'roiTotal'=>$roiTotal,
			'nrtotal'=>count($analytic),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route















$app->post( "/557788admin/analytics/adicionar", function() 
{
	User::verifyLogin();


	$user = User::getFromSession();


	

	$desanalytic = $_POST['desanalytic'];
	$desanalyticabbr = $_POST['desanalyticabbr'];




	$analytic = new Analytic();

	$analytic->setData([

		'indeleted'=>0,
		'inposition'=>0,
		'desanalytic'=>$desanalytic,
		'desanalyticabbr'=>$desanalyticabbr

	]);
	
	

	$analytic->update();

	header("Location: /557788admin/analytics");
	exit;


	

});//END route























$app->get( "/557788admin/analytics/adicionar", function() 
{
	User::verifyLogin();


	$user = User::getFromSession();



	




	$page = new PageAdmin();

	$page->setTpl( 
		
		"analytics-create", 
		
		array(

			'user'=>$user->getData(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route














$app->post( "/557788admin/analytics/:idanalytic", function( $idanalytic ) 
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


	$desanalytic = $_POST['desanalytic'];
	$desanalyticabbr = $_POST['desanalyticabbr'];
	$inposition = $_POST['inposition'];





	$analytic->setData([

		'idanalytic'=>$analytic->getidanalytic(),
		'indeleted'=>$analytic->getindeleted(),
		'inposition'=>$inposition,
		'desanalytic'=>$desanalytic,
		'desanalyticabbr'=>$desanalyticabbr

	]);
	

	

	

	$analytic->update();

	header("Location: /557788admin/analytics");
	exit;


});//END route



























$app->get( "/557788admin/analytics/:idanalytic", function( $idanalytic ) 
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




	$page = new PageAdmin();

	$page->setTpl( 
		
		"analytics-update", 
		
		array(

			'user'=>$user->getData(),
			'analytic'=>$analytic->getValues(),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route




























 
$app->get( "/557788admin/analytics", function() 
{
	User::verifyLogin();


	$user = User::getFromSession();



	

	$analytic = Analytic::listAll();




	$leakrate = LeakRate::getLastByAnalytic();
	$roi = ROI::getLastByAnalytic();
	$roiTotals = ROI::getTotals();


	$roiTotal = 0;

	if( count($roiTotals) > 0 ) $roiTotal = $roiTotals['vlcardtotal'] / $roiTotals['vlcosttotal'];
	
	






	$page = new PageAdmin();

	$page->setTpl( 
		
		"analytics", 
		
		array(

			'user'=>$user->getData(),
			'analytic'=>$analytic,
			'leakrate'=>$leakrate,
			'roi'=>$roi,
			'roiTotals'=>$roiTotals,
			'roiTotal'=>$roiTotal,
			'nrtotal'=>count($analytic),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route












 ?>