<?php 

namespace Core\Model;


//use \Core\DB\Sql;
use \Core\Model;
use \Core\Rule;




class Landing extends Model
{

	# Session
	const SESSION = "dv-landing1";
	const ERROR_REGISTER = "dv-landing1-login";

	# Error - Success
	const SUCCESS = "Landing-Success";
	const ERROR = "Landing-Error";





	public static function setTrack($src, $checkout = true)
	{

		$track = '';

		$data = [
	
			'src'=>$src
	
		];


		


		if($checkout) 
		{

			$track = Rule::GATEWAY_URL3."&".http_build_query($data);

		}//end if
		else
		{

			$track = Rule::GATEWAY_URL3."?".http_build_query($data);


		}//end else
	
	
		return $track;
	
		
	}//END Method




	public static function setError( $msg )
	{

		$_SESSION[Landing::ERROR] = $msg;

	}//END method









	public static function getError()
	{

		$msg = (isset($_SESSION[Landing::ERROR]) && $_SESSION[Landing::ERROR]) ? $_SESSION[Landing::ERROR] : '';

		Landing::clearError();

		return $msg;

	}//END method







	public static function clearError()
	{
		$_SESSION[Landing::ERROR] = NULL;

	}//END method








	public static function setSuccess($msg)
	{

		$_SESSION[Landing::SUCCESS] = $msg;

	}//END method






	public static function getSuccess()
	{

		$msg = (isset($_SESSION[Landing::SUCCESS]) && $_SESSION[Landing::SUCCESS]) ? $_SESSION[Landing::SUCCESS] : '';

		Landing::clearSuccess();

		return $msg;

	}//END method







	public static function clearSuccess()
	{
		$_SESSION[Landing::SUCCESS] = NULL;

	}//END method 







}//END Class








 ?>