<?php 

//use \Core\Page;
use \Core\PageLanding;
//use \Core\Validate;
//use \Core\Mailer;
use \Core\Rule;
//use \Core\CodeFactory;
use \Core\Model\Landing;
use \Core\Model\Feature;
use \Core\Model\Album;

















$app->get( '/consultoria', function()
{
	

	//$link1 = 'https://wa.me/5531984050125?text=Olá,%20preciso%20de%20um%20Gestor%20de%20Tráfego%20e%20gostaria%20de%20marcar%20uma%20Call!';
	$link1 = 'https://bit.ly/gestordetrafegoinfo';





	$page = new PageLanding();

	$page->setTpl(

		"landing2".DIRECTORY_SEPARATOR."index",


		[

			'link1'=>$link1,
			'error'=>Landing::getError()

		]
	
	);//end setTpl

});//END route























?>