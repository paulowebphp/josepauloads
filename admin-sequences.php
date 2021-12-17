<?php 

use \Core\PageAdmin;
use \Core\Validate;
use \Core\MailerMachine;
use \Core\Rule;
use \Core\Model\User;
//use \Core\Model\Machine;
use \Core\Model\Campaign;
use \Core\Model\Sequence;
use \Core\Model\Username;











$app->get( "/557788admin/campanhas/:idcampaign/sequencias/enviar/:idsequence", function( $idcampaign,$idsequence ) 
{
	User::verifyLogin();


	$user = User::getFromSession();


    

    $campaign = new Campaign();

	$campaign->get( (int)$idcampaign );


	if( (int)$campaign->getidcampaign() === 0 )
	{


		header( "Location: /557788admin/campanhas/".$idcampaign."/sequencias" );
		exit;


	}//end if


    
    $sequence = new Sequence();
	

	$sequence->get( (int)$idsequence );


	if( (int)$sequence->getidsequence() === 0 )
	{


		header( "Location: /557788admin/campanhas/".$idcampaign."/sequencias" );
		exit;


	}//end if



	$username = new Username();

	$username->get( (int)$sequence->getidusername() );

		
	$subject = preg_replace('/\{nick\}/', $sequence->getdesnick(), $sequence->getdessubject() );


	
	

	$mailer = new MailerMachine(

		$username->getdeshost(),
		
		$username->getnrport(),

		$username->getdesusername(),
		
		$username->getdesunpassword(),

		$username->getdesnamefrom(),
		
		$subject,

		$sequence->getdestemplate(),

		array(

			'desnick'=>$sequence->getdesnick(),
			'desnamefrom'=>$username->getdesnamefrom()

		),

		$sequence->getdeslogin(),

		$sequence->getdesperson()

	
	);

	$mailer->send();











	$mailer_admin1 = new MailerMachine(

		$username->getdeshost(),
		
		$username->getnrport(),

		$username->getdesusername(),
		
		$username->getdesunpassword(),

		$username->getdesnamefrom(),
		
		$subject,

		$sequence->getdestemplate(),

		array(

			'desnick'=>$sequence->getdesnick(),
			'desnamefrom'=>$username->getdesnamefrom()

		),

		Rule::ADMIN_EMAIL,

		$sequence->getdesperson()

	
	);

	$mailer_admin1->send();











	$mailer_admin2 = new MailerMachine(

		$username->getdeshost(),
		
		$username->getnrport(),

		$username->getdesusername(),
		
		$username->getdesunpassword(),

		$username->getdesnamefrom(),
		
		$subject,

		$sequence->getdestemplate(),

		array(

			'desnick'=>$sequence->getdesnick(),
			'desnamefrom'=>$username->getdesnamefrom()

		),

		Rule::ADMIN_EMAIL2,

		$sequence->getdesperson()

	
	);

	$mailer_admin2->send();




	//$timezone = new DateTimeZone('America/Sao_Paulo');
	//$dtsent = new DateTime('now');
	//$dtsent->setTimezone($timezone);



	Sequence::setDateSent( (int)$sequence->getidsequence() );




	User::setSuccess("Sequência Disparada!");
	header("Location: /557788admin/campanhas/".$campaign->getidcampaign()."/sequencias");
		exit;


	

});//END route














$app->get( "/557788admin/campanhas/:idcampaign/sequencias/duplicar/:idsequence", function( $idcampaign,$idsequence ) 
{
	User::verifyLogin();


	$user = User::getFromSession();


    

    $campaign = new Campaign();

	$campaign->get( (int)$idcampaign );


	if( (int)$campaign->getidcampaign() === 0 )
	{


		header( "Location: /557788admin/campanhas/".$idcampaign."/sequencias" );
		exit;


	}//end if


    
    $sequence = new Sequence();
	

	$sequence->get( (int)$idsequence );


	if( (int)$sequence->getidsequence() === 0 )
	{


		header( "Location: /557788admin/campanhas/".$idcampaign."/sequencias" );
		exit;


	}//end if


	

	


	$duplicate_sequence = new Sequence();

	$duplicate_sequence->setData([
		
		'idcampaign'=>$sequence->getidcampaign(),
		'idusername'=>$sequence->getidusername(),
		'insent'=>0,
		'dessubject'=>$sequence->getdessubject(),
		'destemplate'=>$sequence->getdestemplate(),
		'dtsent'=>NULL


	]);


	

	$duplicate_sequence->update();


	header("Location: /557788admin/campanhas/".$campaign->getidcampaign()."/sequencias");
		exit;


	

});//END route

















$app->get( "/557788admin/campanhas/:idcampaign/sequencias/deletar/:idsequence", function( $idcampaign,$idsequence ) 
{
	User::verifyLogin();


	$user = User::getFromSession();


    

    $campaign = new Campaign();

	$campaign->get( (int)$idcampaign );


	if( (int)$campaign->getidcampaign() === 0 )
	{


		header( "Location: /557788admin/campanhas/".$idcampaign."/sequencias" );
		exit;


	}//end if


    
    $sequence = new Sequence();
	

	$sequence->get( (int)$idsequence );


	if( (int)$sequence->getidsequence() === 0 )
	{


		header( "Location: /557788admin/campanhas/".$idcampaign."/sequencias" );
		exit;


	}//end if


	if( (int)$sequence->getinsent() === 1 )
	{

		User::setError("Você não pode deletar essa sequência pois ela já foi enviada");
		header("Location: /557788admin/campanhas/".$campaign->getidcampaign()."/sequencias");
		exit;


	}//end if


	$sequence->delete();


	header("Location: /557788admin/campanhas/".$campaign->getidcampaign()."/sequencias");
		exit;


	

});//END route































$app->post( "/557788admin/campanhas/:idcampaign/sequencias/adicionar", function( $idcampaign ) 
{
	User::verifyLogin();


	$user = User::getFromSession();


    

    $campaign = new Campaign();

	$campaign->get( (int)$idcampaign );


    $username = Username::getByMachine( (int)$campaign->getidmachine() );
    
    


	$idusername = $_POST['idusername'];
	$destemplate = $_POST['destemplate'];
	$dessubject = $_POST['dessubject'];

	$sequence = new Sequence();

	$sequence->setData([

		'idcampaign'=>$campaign->getidcampaign(),
		'idusername'=>$idusername,
		'insent'=>0,
		'dessubject'=>$dessubject,
		'destemplate'=>$destemplate,
		'dtsent'=>NULL

	]);
	

	

	$sequence->update();


	header("Location: /557788admin/campanhas/".$campaign->getidcampaign()."/sequencias");
	exit;


	

});//END route



















$app->get( "/557788admin/campanhas/:idcampaign/sequencias/adicionar", function( $idcampaign ) 
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
		header( "Location: /557788admin/campanhas/".$idcampaign."/sequencias" );
		exit;
		
	}//end else

	

    $campaign = new Campaign();

	$campaign->get( (int)$idcampaign );


    $username = Username::getByMachine( (int)$campaign->getidmachine() );
    
    


	$page = new PageAdmin();

	$page->setTpl( 
		
		"sequences-create", 
		
		array(

			'user'=>$user->getValues(),
			'campaign'=>$campaign->getValues(),
			'username'=>$username,
			'template'=>$template,
			'nrtotal'=>count($username),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route



































$app->post( "/557788admin/campanhas/:idcampaign/sequencias/:idsequence", function( $idcampaign,$idsequence ) 
{
	User::verifyLogin();


	$user = User::getFromSession();


    

    $campaign = new Campaign();

	$campaign->get( (int)$idcampaign );


	if( (int)$campaign->getidcampaign() === 0 )
	{


		header( "Location: /557788admin/campanhas/".$idcampaign."/sequencias" );
		exit;


	}//end if


    
    $sequence = new Sequence();
	

	$sequence->get( (int)$idsequence );


	if( (int)$sequence->getidsequence() === 0 )
	{


		header( "Location: /557788admin/campanhas/".$idcampaign."/sequencias" );
		exit;


	}//end if


	$username = Username::getByMachine( (int)$campaign->getidmachine() );


	$idusername = $_POST['idusername'];
	$destemplate = $_POST['destemplate'];
	$dessubject = $_POST['dessubject'];

	
        


	$sequence->setData([

		'idsequence'=>$sequence->getidsequence(),
		'idcampaign'=>$campaign->getidcampaign(),
		'idusername'=>$idusername,
		'insent'=>$sequence->getinsent(),
		'dessubject'=>$dessubject,
		'destemplate'=>$destemplate,
		'dtsent'=>$sequence->getdtsent()

	]);
	
	

	$sequence->update();


	header("Location: /557788admin/campanhas/".$campaign->getidcampaign()."/sequencias");
	exit;



});//END route

































 
$app->get( "/557788admin/campanhas/:idcampaign/sequencias/:idsequence", function( $idcampaign,$idsequence ) 
{
	User::verifyLogin();


	$user = User::getFromSession();


    

    $campaign = new Campaign();

	$campaign->get( (int)$idcampaign );


	if( (int)$campaign->getidcampaign() === 0 )
	{


		header( "Location: /557788admin/campanhas/".$idcampaign."/sequencias" );
		exit;


	}//end if


    
    $sequence = new Sequence();
	

	$sequence->get( (int)$idsequence );


	if( (int)$sequence->getidsequence() === 0 )
	{


		header( "Location: /557788admin/campanhas/".$idcampaign."/sequencias" );
		exit;


	}//end if

















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
		header( "Location: /557788admin/campanhas/".$idcampaign."/sequencias" );
		exit;
		
	}//end else















	$username = Username::getByMachine( (int)$campaign->getidmachine() );
    


	$page = new PageAdmin();

	$page->setTpl( 
		
		"sequences-update", 
		
		array(

			'user'=>$user->getValues(),
			'campaign'=>$campaign->getValues(),
			'sequence'=>$sequence->getValues(),
			'username'=>$username,
			'template'=>$template,
			'nrtotal'=>count($username),
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route





























 
$app->get( "/557788admin/campanhas/:idcampaign/sequencias", function( $idcampaign ) 
{
	User::verifyLogin();


	$user = User::getFromSession();


    

    $campaign = new Campaign();

	$campaign->get( (int)$idcampaign );


    
    $sequence = Sequence::getByCampaign( (int)$idcampaign );


	
    


	$page = new PageAdmin();

	$page->setTpl( 
		
		"sequences", 
		
		array(

			'user'=>$user->getValues(),
			'campaign'=>$campaign->getValues(),
			'sequence'=>$sequence,
			'success'=>User::getSuccess(),
			'error'=>User::getError()

		)
	
	);//end setTpl

});//END route




















 ?>