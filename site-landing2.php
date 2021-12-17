<?php 

//use \Core\Page;
use \Core\PageLanding;
//use \Core\Validate;
//use \Core\Mailer;
use \Core\Rule;
//use \Core\CodeFactory;
use \Core\Model\Landing;
use \Core\Model\Feature;













$app->get( '/lista-espanhol', function()
{	


	$negative = Feature::getNegativeKeywords();


	foreach( $negative as &$row )
	{


		foreach ($row as &$value) 
		{

			$value = $value . "\n";
			

		}//end foreach


	}//end foreach
	


	$page = new PageLanding();

	$page->setTpl(

		"landing2".DIRECTORY_SEPARATOR."index",


		[


			'negative'=>$negative,
			'error'=>Landing::getError()

		]
	
	);//end setTpl

});//END route
































?>