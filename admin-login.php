<?php 

use \Core\PageAdmin;
use \Core\Rule;
use \Core\Validate;
use \Core\Model\User;






















$app->get('/557788admin/login', function () {

    


	$page = new PageAdmin([
  
	  'header'=>false,
	  'footer'=>false
  
  
	]);
  
	$page->setTpl("login",[
  
	  'error'=>User::getError()
  
  
	]);
  
  
});//end route


































$app->post('/557788admin/login', function () {

	

	if( !isset($_POST['deslogin']) || $_POST['deslogin'] == '' )
	{
  
	  User::setError(Rule::ERROR_EMAIL);
	  header("Location: /557788admin/login");
	  exit;
  
	}//end if
  
  
  
	if( ( $deslogin = Validate::validateEmail( $_POST['deslogin'] ) ) === false )
	{
  
	  User::setError(Rule::VALIDATE_EMAIL);
	  header("Location: /557788admin/login");
	  exit;
  
	}//end if
  
  
  
	
  
  
  
  
	if( !isset($_POST['despassword']) || $_POST['despassword'] == '' )
	{
  
	  User::setError(Rule::ERROR_PASSWORD);
	  header("Location: /557788admin/login");
	  exit;
  
	}//end if
  
  
  
	if( ( $despassword = Validate::validatePassword( $_POST['despassword'] ) ) === false )
	{
  
	  User::setError("A senha deve ter entre " . Rule::PASSWORD_LENGHT_MIN . " e " . Rule::PASSWORD_LENGHT_MAX . " caracteres | Por favor, tente novamente");
	  header("Location: /557788admin/login");
	  exit;
  
	}//end if
  

    
	
	
	
	try 
	{
  
  
	  User::login( $deslogin, $despassword );
  
  
	  
	} //end trye
	catch ( \Exception $e ) 
	{
  
  
	  User::setError( $e->getMessage() );
  
  
	  
	}//end catch
  
  
  
  
	
	header("Location: /557788admin");
	exit;
  
  
  
  
});//end route
  
























$app->get('/557788admin/logout', function () {


	User::logout();
  
	header("Location: /557788admin/login");
	exit;
	
  
  
});//end route
  















 ?>