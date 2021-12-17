<?php 

//use \Core\Page;
use \Core\PageLanding;
//use \Core\Validate;
//use \Core\Mailer;
use \Core\Rule;
//use \Core\CodeFactory;
use \Core\Model\Landing;
use \Core\Model\Feature;













$app->get( '/fonts', function()
{	


	$font = Feature::getFont();


	
	


	$page = new PageLanding();

	$page->setTpl(

		"landing4".DIRECTORY_SEPARATOR."index",


		[


			'font'=>$font,
			'error'=>Landing::getError()

		]
	
	);//end setTpl

});//END route
































?>