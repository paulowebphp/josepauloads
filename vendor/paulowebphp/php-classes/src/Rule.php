<?php 

namespace Core;

//use \Core\DB\Sql;
use \Core\Model;


class Rule extends Model
{


	const CANONICAL_NAME = 'josepauloads1.com';
	const DOMAIN_PRODUCTION = 'josepauloads.com';

	const LEAD_PASSWORD_LENGTH = 6;
	const DEFAULT_LEAD_PASSWORD = '12345678';

	const ADMIN_EMAIL = 'jpccambraia2@gmail.com';
	const ADMIN_ADDRESS = 'Webmaster';
	const ERROR_LOGIN = "Usuário inexistente ou senha inválida";

	const ADMIN_EMAIL2 = 'jpccambraia@gmail.com';
	

	/*********************************LANDING1 ***************************************/
	/*********************************LANDING1 ***************************************/
	const URI_LANDING1 = 'gestor';
	const URI_LANDING2 = 'consultoria';

	const URI_LANDING3 = 'googlemeunegocio';
	const URI_LANDING4 = 'consultorgoogle';
	const URI_LANDING5 = 'consultor';
	const URI_LANDING6 = 'googlemaps';

	/*gestor trafego
	consultor trafego
	especialista google
	consultor google
	especialista google meu negócio
	
	
	especialista seo*/

	








	/*********************************MAINTENANCE ***************************************/
	/*********************************MAINTENANCE ***************************************/

	const MAINTENANCE = 'Olá! Desculpe pelo transtorno, mas estamos fazendo uma manutenção no Banco de Dados e por isso nossos serviços estão indisponíveis até as 19:30h de hoje';

	/*********************************MAINTENANCE ***************************************/
	/*********************************MAINTENANCE ***************************************/











	/*********************************USER ***************************************/
	/*********************************USER ***************************************/
	const DEFAULT_PHOTO = '0.jpg';
	const DEFAULT_PHOTO_EXTENSION = 'jpg';
	/*********************************USER ***************************************/
	/*********************************USER ***************************************/











	/********************************* ID HASH ***************************************/
	/********************************* ID HASH ***************************************/

	const VALIDATE_ID_HASH_LEAD = 'O endereço da página que você tentou acessar está incorreto | Por favor, confira o endereço digitado e tente acessar novamente';

	/********************************* ID HASH ***************************************/
	/********************************* ID HASH ***************************************/








	/********************************* RECOVERY ***************************************/
	/********************************* RECOVERY ***************************************/
	const ERROR_SET_RECOVERY = "O email informado é inválido | Por favor, tente novamente";
    const ERROR_GET_RECOVERY = "Houve um erro inesperado | Por favor, volte no Email e clique novamente no Link que você recebveu | Caso o erro persista, aguarde aproximadamente 60 minutos e peça uma nova Recuperação de Senha ou entre em contato com o Suporte";
	const URI_RECOVERY = 'recuperar-senha';
	const URI_RECOVERY_SENT = 'redefinir';
	const URI_ADMIN = '488888';


	const EMAIL_RECOVERY_SUBJECT = "Recuperação de Senha";

	const ERROR_PASSWORD = "Preencha a senha";
    const VALIDATE_VERIFY_PASSWORD_CONFIRM = "A nova senha e a confirmação são diferentes | Por favor, tente novamente";
    const PASSWORD_LENGHT_MIN = 6;
    const PASSWORD_LENGHT_MAX = 20;
    const SUCCESS_PASSWORD = "Senha modificada";
    const ERROR_PASSWORD_CONFIRM = "Preencha a confirmação da senha";
    const ERROR_CURRENT_PASS = "Preencha a senha atual";
    const VERIFY_CURRENT_PASS = "A sua nova senha deve ser diferente da atual | Por favor, tente novamente";
    const VERIFY_PASSWORD = "A senha atual informada é inválida | Por favor, tente novamente";
	/********************************* RECOVERY ***************************************/
	/********************************* RECOVERY ***************************************/






	/********************************* SET ERROR ***************************************/
	/********************************* SET ERROR ***************************************/
	
	const CHECK_LEAD_EXISTS = 'Este endereço de e-mail já foi usado  | Caso seja o seu e-mail, vá na sua Caixa de Entrada e clique no link recebido para fazer Login e baixar o E-book';

	const ERROR_EMAIL = 'Informe o seu e-mail';
	const VALIDATE_EMAIL = 'O e-mail parece estar num formato inválido | Tente novamente';

	/********************************* SET ERROR ***************************************/
	/********************************* SET ERROR ***************************************/
	
	



	public static function getLandingUri( $value )
	{
		switch ($value) 
		{

			case 'index';
				return 'index';

			case 'landing1':
				# code...
				return Rule::URI_LANDING1;

			case 'landing2':
				# code...
				return Rule::URI_LANDING2;
			
			case 'landing3':
				# code...
				return Rule::URI_LANDING3;

			case 'landing4':
				# code...
				return Rule::URI_LANDING4;


			case 'landing5':
				# code...
				return Rule::URI_LANDING5;

			case 'landing6':
				# code...
				return Rule::URI_LANDING6;

	
		}//end switch

	}//END method






	public static function getLeadUri( $value )
	{
		switch ($value) 
		{
			case 'lead5':
				# code...
				return Rule::URI_LEAD5;
	
		}//end switch

	}//END method
	
	







	
	
	public static function getLeadEbookName( $value )
	{
		switch ($value) 
		{
			case 'lead5':
				# code...
				return Rule::EBOOK_NAME_LEAD5;
	
		}//end switch

	}//END method










	




}//END class Rule







 ?>