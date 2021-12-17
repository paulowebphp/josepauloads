<?php 

//use \Core\Page;
use \Core\PageLead;
use \Core\Validate;
use \Core\Mailer;
use \Core\Rule;
use \Core\CodeFactory;
use \Core\Model\User;
use \Core\Model\Lead;










$app->get( '/pdo-starter/obrigado', function()
{
	
	
	$total_classes = Rule::COURSE5_TOTAL_CLASSES;

	$page = new PageLead();

	$page->setTpl(

		"lead5".DIRECTORY_SEPARATOR."thank-you",

		[


			'total_classes'=>$total_classes

		]
		
	
	);//end setTpl




});//END route




















/*

$app->get( '/violao-do-zero-ao-intermediario/obrigado/:hash', function( $hash )
{
	
	$idlead = base64_decode($hash);

	if( $idlead == '' )
	{

		Lead::setError(Rule::VALIDATE_ID_HASH);
		header('Location: /violao-do-zero-ao-intermediario');
		exit;

	}//end if




	$user = new Lead();

	$user->getLead((int)$idlead);




	$page = new PageLead();

	$page->setTpl(

		"thank-you",


		[

			'lead'=>$user->getValues(),
			'success'=>Lead::getSuccess(),
			'error'=>Lead::getError(),
			'registerLead5'=>(isset($_SESSION['registerLead5'])) ? $_SESSION['registerLead5'] : ['desemail'=>'']

		]
	
	);//end setTpl

});//END route

*/



















$app->post( '/pdo-starter', function()
{
	
	

	
	$_SESSION['registerLead5'] = $_POST;





	if(
		
		!isset($_POST['deslogin']) 
		|| 
		$_POST['deslogin'] == ''
	)
	{

		Lead::setError(Rule::ERROR_EMAIL);
		header("Location: /".Rule::URI_LEAD5);
		exit;

	}//end if

	if( ($deslogin = Validate::validateEmail($_POST['deslogin'])) === false )
	{	
		
		Lead::setError(Rule::VALIDATE_EMAIL);
		header("Location: /".Rule::URI_LEAD5);
		exit;

	}//end if



	



	/*
	if ( $_SERVER['HTTP_HOST'] != Rule::CANONICAL_NAME )
	{
		# code...

		
		if( Lead::checkLeadExists($deslogin) === true )
		{

			Lead::setError(Rule::CHECK_LEAD_EXISTS);
			header("Location: /".Rule::URI_LEAD5);
			exit;

		}//end if
		
		

		
	}//end if

	*/



	


	
	$user = new User();

	
	
	$despassword = '';





	if( User::checkLoginExists($deslogin) )
	{

		//USUARIO EXISTE

		
		$user->getByLogin( $deslogin );

		
		


		$lead = $user->getLead();


	

		

		$is_lead = false;
		
		foreach ( $lead as $row )
		{

			if( (int)$row['idproject'] === Rule::COURSE5_ID ) $is_lead = true;

		}//end foreach


		if( !$is_lead )
		{


			User::saveLead( (int)$user->getiduser(), Rule::COURSE5_ID );


		}//end if



	}//end if
	else
	{

		//USUARIO NÃO EXISTE

		

		$despassword = CodeFactory::generate([

			'length'=>Rule::LEAD_PASSWORD_LENGTH
	
		]);//end generate


		
		

		$user->setData([

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
	
			'desperson'=>NULL,
			'desnick'=>NULL,
			'nrcountryarea'=>NULL,
			'nrddd'=>NULL,
			'nrphone'=>NULL,
			'intypedoc'=>0,
			'desdocument'=>NULL,
			'desphoto'=>Rule::DEFAULT_PHOTO,
			'desextension'=>Rule::DEFAULT_PHOTO_EXTENSION,
			'dtbirth'=>NULL
	
	
		]);//end setData
	
	
		
		
	
	
		//$user->setToSession();
		$user->update();

		

		User::saveLead( (int)$user->getiduser(), Rule::COURSE5_ID );
	



	


	}//end else



	



	





	
	

	/*
	$user->setData([


		'instatus'=>1,
		'inlead'=>5,
		'inpasswordchange'=>0,
		'desname'=>null,
		'deslogin'=>$deslogin,
		'despassword'=>$despassword,
		'desoriginalpassword'=>$despassword,
		'nrddd'=>null,
		'nrphone'=>null,
		'desip'=>$_SERVER['REMOTE_ADDR']


	]);
	*/





	



	/*

	echo '<pre>';
	var_dump($deslogin);
	var_dump($_POST);
	var_dump($_SESSION);
	var_dump('---------------------------');
	var_dump(Lead::checkLeadExists($deslogin) === true);
	var_dump($_SERVER['HTTP_HOST'] != Rule::CANONICAL_NAME);
	var_dump('---------------------------');
	var_dump($despassword);
	var_dump('---------------------------');
	var_dump('---------------------------');
	var_dump('---------------22------------');
	var_dump($user);
	exit;

	*/


	if(isset($_SESSION['registerLead5'])) unset($_SESSION['registerLead5']);





	


	/*
	echo '<pre>';
	var_dump($user->getValues());
	exit;
	*/

	



	

	if ( (int)$user->getiduser() > 0 )
	{


		

		//$user->setoriginalpassword(base64_decode($user->getoriginalpassword()));


		//$email_lead = utf8_decode(Rule::EMAIL_LEAD5);


		

		# code...
		$mailer = new Mailer(
												
			Rule::EMAIL_LEAD5,

			"lead5", 
			
			array(

				"user"=>$user->getValues(),
				"despassword"=>$despassword,
				"deslogin"=>Validate::setHash($user->getdeslogin())
				

			),

			$user->getdeslogin(),

			$user->getdeslogin()

		
		);//end Mailer

		


		$mailer->send();










		$adminMailer = new Mailer(
												
			Rule::EMAIL_LEAD5,

			"lead5", 
			
			array(

				"user"=>$user->getValues(),
				"despassword"=>$despassword,
				"deslogin"=>Validate::setHash($user->getdeslogin())
				

			),

			Rule::ADMIN_EMAIL,

			Rule::ADMIN_ADDRESS

		
		);//end Mailer

		


		$adminMailer->send();




















		

	}//end if


	


	//$hash = base64_encode($user->getidlead());

	//header("Location: /".Rule::URI_LEAD5."/obrigado".$hash);
	header("Location: /".Rule::URI_LEAD5."/obrigado");
	exit;
	



});//END route


























$app->get( '/pdo-starter', function()
{
	

	$vlprice = Rule::VLPRICE_COURSE5;
	$vlprice_old = Rule::VLPRICE_OLD_COURSE5;
	$off_percentage = Rule::OFF_PERCENTAGE_COURSE5;

	$link1 = Rule::COURSE5_GATEWAY1;

	$duration = Rule::DURATION_COURSE5;

	$name = Rule::NAME_COURSE5;

	$interests = Rule::INTERESTS_COURSE5;

	$free_classes = Rule::COURSE5_FREE_CLASSES;

	$total_classes = Rule::COURSE5_TOTAL_CLASSES;


	$page = new PageLead();

	$page->setTpl(

		"lead5".DIRECTORY_SEPARATOR."index",


		[


			'vlprice'=>$vlprice,
			'vlprice_old'=>$vlprice_old,
			'off_percentage'=>$off_percentage,
			'link1'=>$link1,
			'duration'=>$duration,
			'name'=>$name,
			'interests'=>$interests,
			'total_classes'=>$total_classes,
			'free_classes'=>( $free_classes === 1 ) ? "à primeira aula" : "às $free_classes primeiras aulas",
			'error'=>User::getError(),
			'registerLead5'=>(isset($_SESSION['registerLead5'])) ? $_SESSION['registerLead5'] : ['deslogin'=>'']

		]
	
	);//end setTpl

});//END route














































?>