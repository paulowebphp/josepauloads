<?php 

use \Core\Page;
use \Core\PageRedirect;
use \Core\Model\Album;
use \Core\Model\Landing;







$app->get( '/recomendo-este-curso', function()
{
	


	$page = new PageRedirect(['header'=>"redirect1".DIRECTORY_SEPARATOR."header"]);


	$page->setTpl(
		
		"redirect1".DIRECTORY_SEPARATOR."index"
	
	);//end setTpl




});//END route

















$app->get( '/', function()
{
	
	$link1 = 'https://wa.me/5531984050125?text=Olá,%20preciso%20de%20um%20Gestor%20de%20Tráfego%20e%20gostaria%20de%20marcar%20uma%20Call!';


	$page = new Page();


	
	/*
	echo '<pre>';
	var_dump($portfolio);
	exit;
	*/

	//$portfolio = new Album();

	//$portfolio = Album::getPortfolio();


	///$certificate = new Album();

	//$certificate = Album::getCertificate();



	$page->setTpl(
		
		"index",

		[

			//'portfolio'=>$portfolio,
			//'certificate'=>$certificate,
			'link1'=>$link1,
			'error'=>Landing::getError()
		]
	
	);//end setTpl




});//END route


































?>