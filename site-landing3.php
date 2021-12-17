<?php 

//use \Core\Page;
use \Core\PageLanding;
//use \Core\Validate;
//use \Core\Mailer;
use \Core\Rule;
//use \Core\CodeFactory;
use \Core\Model\Landing;
use \Core\Model\Feature;













$app->get( '/colors', function()
{	


	$color = Feature::getColor();


	
	


	$page = new PageLanding();

	$page->setTpl(

		"landing3".DIRECTORY_SEPARATOR."index",


		[


			'color'=>$color,
			'error'=>Landing::getError()

		]
	
	);//end setTpl

});//END route
































?>