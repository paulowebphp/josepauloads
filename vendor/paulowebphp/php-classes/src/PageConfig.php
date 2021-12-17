<?php 

namespace Core;


use \Core\Model;
//use \Core\DB\Sql;





class PageConfig extends Model
{




	# Session
	//const SESSION = "PageConfigSession";

	# Error - Success
	const SUCCESS = "PageConfig-Success";
	const ERROR = 'PageConfig-Error';





	const METADESCRIPTION_MAIN = 'Quer trabalhar com um programador compromissado, ágil e que se compromete a entregar trabalhos de qualidade? Me contrate!';


	const PAGETITLE_MAIN = 'Portfólio ᐅ José Paulo de Carvalho';








	public static function getSitePageConfigFullArray()
	{


		return [


			'index'=>[


				'pagetitle'=>PageConfig::PAGETITLE_MAIN,
				'metadescription'=>PageConfig::METADESCRIPTION_MAIN,
				'noindex'=>0


			]


		];



	}//END getPagePageConfigFullArray


















	public static function getSitePageConfig( $page, $parameter )
	{
		

		$array = PageConfig::getSitePageConfigFullArray();


		
		if ( isset($array[$page]) ) 
		{
			# code...
			return $array[$page][$parameter];

		}//end if
		else
		{
			return $array['index'][$parameter];

		}//end else


	}//END method
	























	public static function setError( $msg )
	{

		$_SESSION[PageConfig::ERROR] = $msg;

	}//END setError









	public static function getError()
	{

		$msg = (isset($_SESSION[PageConfig::ERROR]) && $_SESSION[PageConfig::ERROR]) ? $_SESSION[PageConfig::ERROR] : '';

		PageConfig::clearError();

		return $msg;

	}//END getError







	public static function clearError()
	{
		$_SESSION[PageConfig::ERROR] = NULL;

	}//END clearError








	public static function setSuccess($msg)
	{

		$_SESSION[PageConfig::SUCCESS] = $msg;

	}//END setSuccess






	public static function getSuccess()
	{

		$msg = (isset($_SESSION[PageConfig::SUCCESS]) && $_SESSION[PageConfig::SUCCESS]) ? $_SESSION[PageConfig::SUCCESS] : '';

		PageConfig::clearSuccess();

		return $msg;

	}//END getSuccess







	public static function clearSuccess()
	{
		$_SESSION[PageConfig::SUCCESS] = NULL;

	}//END clearSuccess 











}//END class PageConfig




 ?>