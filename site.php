<?php 

use \Core\Page;
use \Core\PageRedirect;
use \Core\Model\Album;







$app->get( '/recomendo-este-curso', function()
{
	


	$page = new PageRedirect(['header'=>"redirect1".DIRECTORY_SEPARATOR."header"]);


	$page->setTpl(
		
		"redirect1".DIRECTORY_SEPARATOR."index"
	
	);//end setTpl




});//END route

















$app->get( '/', function()
{
	


	$page = new Page();



	

	
	/*
	echo '<pre>';
	var_dump($portfolio);
	exit;
	*/

	$portfolio = new Album();

	$portfolio = Album::getPortfolio();


	$certificate = new Album();

	$certificate = Album::getCertificate();



	$page->setTpl(
		
		"index",

		[

			'portfolio'=>$portfolio,
			'certificate'=>$certificate,
		]
	
	);//end setTpl




});//END route


































?>