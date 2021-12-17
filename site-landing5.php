<?php 

//use \Core\Page;
use \Core\PageLanding;
//use \Core\Validate;
//use \Core\Mailer;
use \Core\Rule;
//use \Core\CodeFactory;
use \Core\Model\Landing;
use \Core\Model\Feature;













$app->get( '/gerador', function()
{	



    
	
	


	$page = new PageLanding();

	$page->setTpl(

		"landing5".DIRECTORY_SEPARATOR."index",


		[


			'error'=>Landing::getError()

		]
	
	);//end setTpl

});//END route
































?>