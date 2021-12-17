<?php

use Core\PagePanel;
use Core\Maintenance;
use Core\Rule;
use Core\Validate;
use Core\Model\User;
use Core\Model\Course;













$app->get( "/painel/mudar-senha", function()
{

	if( Maintenance::checkMaintenance() )
	{	

		$maintenance = new Maintenance();

		$maintenance->getMaintenance();

		User::setError($maintenance->getdesdescription());
		header("Location: /painel/login");
		exit;
		
	}//end if


	




	User::verifyLogin(false);

	$user = User::getFromSession();





    $course = Course::getPDO();


	$page = new PagePanel();

	$page->setTpl(
		

	 
		"panel-change-password", 
		
		[

      
      'module'=>0.1,
      'course'=>$course,
			'user'=>$user->getValues(),
			'error'=>User::getError(),
			'success'=>User::getSuccess()

		]
	
	);//end setTpl

});//END route















$app->post('/painel/mudar-senha', function () {

    User::verifyLogin(false);
  
    $user = User::getFromSession();
  
  
  
  
    if( !isset($_POST['current_pass']) || $_POST['current_pass'] == '' )
    {
  
      User::setError(Rule::ERROR_CURRENT_PASS);
      header("Location: /painel/mudar-senha");
      exit;
  
    }//end if
  
  
  
    if( ( $current_pass = Validate::validatePassword( $_POST['current_pass'] ) ) === false )
    {
  
      User::setError("A senha atual deve ter entre " . Rule::PASSWORD_LENGHT_MIN . " e " . Rule::PASSWORD_LENGHT_MAX . " caracteres | Por favor, tente novamente");
      header("Location: /painel/mudar-senha");
      exit;
  
    }//end if
  
  
  
  
  
  
  
  
  
  
    if( !isset($_POST['new_pass']) || $_POST['new_pass'] == '' )
    {
  
      User::setError(Rule::ERROR_PASSWORD);
      header("Location: /painel/mudar-senha");
      exit;
  
    }//end if
  
  
  
    if( ( $new_pass = Validate::validatePassword( $_POST['new_pass'] ) ) === false )
    {
  
      User::setError("A nova senha deve ter entre " . Rule::PASSWORD_LENGHT_MIN . " e " . Rule::PASSWORD_LENGHT_MAX . " caracteres | Por favor, tente novamente");
      header("Location: /painel/mudar-senha");
      exit;
  
    }//end if
  
  
  
  
  
  
  
  
    if( !isset($_POST['new_pass_confirm']) || $_POST['new_pass_confirm'] == '' )
    {
  
      User::setError(Rule::ERROR_PASSWORD_CONFIRM);
      header("Location: /painel/mudar-senha");
      exit;
  
    }//end if
  
  
  
    if( $_POST['new_pass'] !== $_POST['new_pass_confirm'] )
    {
  
      User::setError(Rule::VALIDATE_VERIFY_PASSWORD_CONFIRM);
      header("Location: /painel/mudar-senha");
      exit;
  
    }//end if
  
  
  
  
  
  
  
  
  
    
    if( $_POST['new_pass'] === $_POST['current_pass'] )
    {
  
      User::setError(Rule::VERIFY_CURRENT_PASS);
      header("Location: /painel/mudar-senha");
      exit;
  
    }//end if
  
  
    if( !( password_verify($current_pass, $user->getdespassword()) ) )
    {
  
      User::setError(Rule::VERIFY_PASSWORD);
      header("Location: /painel/mudar-senha");
      exit;
  
    }//end if
  
  
  
  
  
  
  
    $user->setdespassword( User::getPasswordHash( $new_pass ) );
  
    $user->update();
  
    $user->setToSession();
    
  
  
    User::setSuccess(Rule::SUCCESS_PASSWORD);
    header("Location: /painel");
    exit;
  
   
  
  
  
  
  });//end route
  




















?>