<?php 

use \Core\PageAdmin;
use \Core\Model\User;








$app->get('/557788admin', function () {

	

	User::verifyLogin();
  
	$user = User::getFromSession();
	
   
	
  
	$page = new PageAdmin();
  
	$page->setTpl("index", [
  
	  'user'=>$user->getData(),
	  'success'=>User::getSuccess(),
	  'error'=>User::getError()
  
  
	]);
  
  
  });//end route
	




 ?>