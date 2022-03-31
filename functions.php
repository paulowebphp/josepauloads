<?php 

use \Core\PageConfig;
use \Core\Rule;
use \Core\Validate;
use \Core\Model\User;







function checkIsProduction()
{

	return ( getHttpHost() == Rule::DOMAIN_PRODUCTION );


}//end function




function getUrlBtnLanding( $url_btn_landing )
{

	switch ($url_btn_landing) {
		case '1':
			# code...
			return Rule::URL_BTN_LANDING1;
			break;

		case '3':
			# code...
			return Rule::URL_BTN_LANDING3;
			break;
		
		default:
			# code...
			return '#';
			break;
	}
	

}//end function



function formatDate( $date )
{

    return date('d/m/Y', strtotime($date));


}//end function



function formatTime( $date )
{

    return date('H:i:s', strtotime($date));


}//end function



function formatDateTime( $datetime )
{

	$dt = new \DateTime($datetime);

    return $dt->format("d/m/Y") . " às " . $dt->format("H:i:s");


}//end function



function getSitePageConfig( $parameter )
{

	$uri_handler = getUri();

	return PageConfig::getSitePageConfig($uri_handler, $parameter);


}//END function





//BACKUP
/*
 function getSitePageConfig( $parameter )
{

	$uri = explode('/', $_SERVER["REQUEST_URI"]);

	

	if ( 

		!isset($uri[1]) 
		||
		$uri[1] == ''

	)
	{
		# code...
		return PageConfig::getSitePageConfig('index', $parameter);

	}//end if
	else
	{
		

		return PageConfig::getSitePageConfig($uri[1], $parameter);

	}//end else	


}//END function
 */






function getYear()
{

	return date('Y');
	
}//END function









function getHttpHost()
{

	return $_SERVER['HTTP_HOST'];

}//END function











/*
function getUri()
{

	$uri = explode('/', $_SERVER["REQUEST_URI"]);

	if ( 

		!isset($uri[1]) 
		||
		$uri[1] == ''

	)
	{
		# code...
		return 'index';

	}//end if
	else
	{


		if( preg_match('/\?/', $uri[1]) )
		{

			return 'index';
			
		}//end elseif
		else
		{

			
			return $uri[1];

			

		}//end elseif



	}//end else


}//END function
*/





















function getUri()
{

	$uri = explode('/', $_SERVER["REQUEST_URI"]);

	
	

	if ( 

		!isset($uri[1]) 
		||
		$uri[1] == ''

	)
	{
		# code...
		return 'index';

	}//end if
	else
	{
		

		if (preg_match('/\?/', $uri[1]))
		{

			



			$uri_handler = explode('?', $uri[1]);


			

		}//end if

		if(

			!isset($uri_handler[0]) 
			||
			$uri_handler[0] == ''

		) 
		{



			return $uri[1];


		}//end if
		else
		{
			
			return $uri_handler[0];

			

		}//end if

		

	}//end else	


}//END function
 


function getActive( $request_uri, $uri, $handler, $counter )
{

	$value = "/painel/".$uri."/".$handler."/".Validate::setHash($counter);

	if( $request_uri == $value ) return true;




}//end function





function checkLandingUri($value)
{

	

	return (getUri() == Rule::getLandingUri($value));

}//end function










function checkLeadUri($value)
{

	return (getUri() == Rule::getLeadUri($value));

}//end function










function getLeadUri($value)
{

	return Rule::getLeadUri($value);

}//end function








function getLeadEbookName($value)
{

	return Rule::getLeadEbookName($value);

}//end function









function getDeslogin()
{

	$user = User::getFromSession();

	return $user->getdeslogin();

}//END function












function getInlead()
{

	$user = User::getFromSession();

	return $user->getinlead();

}//END function





function setHash( $value )
{

    return Validate::setHash( $value );

}//end function 





function getHash( $value )
{

    return Validate::getHash( $value );

}//end function 



function add( $vl1,$vl2 )
{

	return $vl1+$vl2;
	
}//end function


function formatPrice( $value )
{


    if( (float)$value === 0 ) $value = 0;

    return number_format( $value, 2, ",", "." );



}//end function




function formatPointToComma( $value )
{


    if( (float)$value === 0.00 ) $value = 0;

    return number_format( $value, 2, ",", "" );



}//end function




 ?>