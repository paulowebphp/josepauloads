<?php 

namespace Core\Model;


use \Core\Mailer;
use \Core\MailerPasswordRecovery;
use \Core\Model;
use \Core\Rule;
use \Core\Validate;
use \Core\DB\Sql;
use \Core\Model\Plan;



class User extends Model
{

	const SESSION = "ext2-user";

	# CHAVE DE ENCRIPTAÇÃO TEM QUE TER 16 CARACTERES
	const SECRET = "Ext2_Secret";

	const ERROR = "ext2-user-error";

	const ERROR_REGISTER = "ext2-user-register";

	const SUCCESS = "ext2-user-success";








	


    public static function login( $deslogin, $despassword )
    {
		
		
		
        $sql = new Sql();

        $query = "
        
            SELECT * FROM tb_users a
            INNER JOIN tb_persons b ON a.idperson = b.idperson
            WHERE a.deslogin = :deslogin
            ORDER BY a.dtregister DESC
            LIMIT 1;        
        
        ";

        $results = $sql->select( $query, [

            ':deslogin'=>$deslogin

        ]);
        
		
		
        
        
        if( count($results) === 0 )
        {

            if( (bool)User::checkLogin() ) User::logout();

            throw new \Exception( Rule::ERROR_LOGIN );

        }//end if

        $dataUser = $results[0];


		
		
        

        if ( password_verify( $despassword, $dataUser['despassword'] ) ) 
        {
            
            $user = new User();

            $user->setData($dataUser);


			


            /*
			if(

                (int)$user->getinadmin() === 0
                &&
                (int)$user->getinregister() === 0


            )
            {

                //$user->setRegister();
                $user->setinregister(1);
                $user->update();

            }//end if
			*/


			


            if( (bool)User::checkLogin() ) User::logout();                 
            
            $user->setToSession();

            return $user;

            
        }//end if
        else 
        {

            if( (bool)User::checkLogin() ) User::logout();

            throw new \Exception( Rule::ERROR_LOGIN );

            
        }//end else
        


    }//end method
















































    public static function getFromSession()
    {


        if ( User::checkLogin() ) 
        {

            $user = new User();

            $user->setData( $_SESSION[User::SESSION] );

            return $user;

            
        } //end if
        else 
        {

            return false;
            
        }//end else
        


    }//end method


































































    public static function checkLogin()
    {


		
        if (

            !isset( $_SESSION[User::SESSION] )
            ||
            !$_SESSION[User::SESSION]
            ||
            !(int)$_SESSION[User::SESSION]['iduser'] > 0


        ) 
        {

			
	

            return false;

            
        }//end if
        else 
        {

            return true;

            
        }//end else
        




    }//end method
































































    public static function verifyLogin( $routeAdmin = true )
    {

		

        if ( !User::checkLogin() ) 
        {

            //NÃO ESTÁ LOGADO


			

            if ( $routeAdmin ) 
            {

                header("Location: /557788admin/login");
                exit;
                
            }//end if
            else 
            {

                header("Location: /login");
                exit;
                
            }//end else
            


            
        }//end if
        else 
        {

            //ESTÁ LOGADO
            if ( !$routeAdmin ) 
            {

                //ROTA DE USUÁRIO COMUM
                if ( !(bool)$_SESSION[User::SESSION]['inadmin'] ) 
                {

                    return true;
                    
                }//end if
                else 
                {

                    User::logout();
                    header("Location: /557788admin/login");
                    exit;

                    
                }//end else
                



                
            }//end if
            else 
            {

                //ROTA DO ADMIN
                if ( (bool)$_SESSION[User::SESSION]['inadmin'] ) 
                {
                    return true;
                    
                } //end if
                else 
                {

                    User::logout();
                    header("Location: /login");
                    exit;
                    
                }//end else
                

                
            }//end else
            
            



            
        }//end else
        




    }//end method
















































	public static function logout()
	{
		$_SESSION[User::SESSION] = NULL;
		
	}//END logout








	public function setToSession()
	{

		$_SESSION[User::SESSION] = $this->getValues();

	}//END setToSession






























	public static function getRecaptcha( $response )
	{

		
		$ch = curl_init();



		# CURLOPT_URL - Define a URL que será requisitada pelo cURL

		# CURLOPT_RETURNTRANSFER - Define o tipo de retorno que ocorrerá da requisição. Se definirmos TRUE ou 1, o retorno será uma string

		# CURLOPT_SSL_VERIFYPEER - Indica se ocorrerá a verificação dos peers durante a requisição. Se informarmos 0 ou FALSE, a verificação não ocorrerá

		/*curl_setopt( $ch, CURLOPT_HTTPHEADER, array (
	        "Content-Type: application/json",
	        "secret: 6Lenr7EUAAAAAPkp5iZlX15I1wG9RDCAQmBG1w6E",
	        "response: $response"
	    ));*/

	    

	    curl_setopt($ch, CURLOPT_URL, "https://www.google.com/recaptcha/api/siteverify");

	    $fields = array(

	    	'secret' => '6LeBVMIUAAAAAGHZB5oHoT7S901nrW7DKf1pp5jx',
	    	'response'=> $response

		);

	    curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);

		

		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

		# TRUE É PARA SERIALIZAR, PARA VIR COMO ARRAY E NÃO COMO OBJETO
		$data = json_decode( curl_exec($ch), true );

		# Necessito fechar com curl_close() por se tratar de um ponteiro de memória. Se não fechar, cada vez que der um REFRESH na página, no front ele irá criar mais um ponteiro e vai pesar na memória

		curl_close($ch);

		return $data;

		

	}//END getCEP







	

	





	public function getByLogin( $deslogin )
	{

		
		
		$sql = new Sql();


		$query = "
		
		
			SELECT * FROM tb_users a
			INNER JOIN tb_persons b ON a.idperson = b.idperson
			WHERE a.deslogin = :deslogin
			ORDER BY a.dtregister DESC
			LIMIT 1;
				
		";


		$results = $sql->select( $query, [

			':deslogin'=>$deslogin


		]);



		if( count($results) > 0 )
		{

			if ( $_SERVER['HTTP_HOST'] == Rule::CANONICAL_NAME  ) 
			{
				
				//$results[0]['desperson'] = utf8_encode($results[0]['desperson']);
				//$results[0]['desnick'] = utf8_encode($results[0]['desnick']);
					
			}//end if


			$this->setData($results[0]);
			
		}//end if

	}//END method











































	public function getLead()
	{

		
		
		$sql = new Sql();


		$query = "
		
		
			SELECT SQL_CALC_FOUND_ROWS * 
			FROM tb_users a
			INNER JOIN tb_usersprojects b ON a.iduser = b.iduser
			INNER JOIN tb_projects c ON b.idproject = c.idproject
			WHERE a.iduser = :iduser
			ORDER BY a.dtregister DESC;
			
				
		";


		$results = $sql->select( $query, [

			':iduser'=>$this->getiduser()


		]);


		
		$resultTotal = $sql->select("
		
			SELECT FOUND_ROWS() AS nrtotal;
		
		");//end select


		if ( $_SERVER['HTTP_HOST'] == Rule::CANONICAL_NAME  ) 
			{
				
				//$results[0]['desperson'] = utf8_encode($results[0]['desperson']);
				//$results[0]['desnick'] = utf8_encode($results[0]['desnick']);
					
			}//end if


			return $results;

	}//END method





















	public static function listAll()
	{
		$sql = new Sql();

		return $sql->select("

			SELECT * FROM tb_users a 
			INNER JOIN tb_persons b ON a.idperson = b.idperson
			ORDER BY a.dtregister DESC;

		");//end select
		
	}//END listAll









	public static function listAllLeads()
	{
		$sql = new Sql();

		return $sql->select("

			SELECT * FROM tb_users a 
			INNER JOIN tb_persons b ON a.idperson = b.idperson
			WHERE a.inadmin = 0
			AND a.inlead = 1
			ORDER BY a.dtregister DESC;

		");//end select
		
	}//END listAll
	









	# Aula 117
	public function get( $iduser )
	{
		$sql = new Sql();

		$results = $sql->select("
		
			SELECT * FROM tb_users a 
			INNER JOIN tb_persons b ON a.idperson = b.idperson
			WHERE a.iduser = :iduser
			ORDER BY a.dtregister DESC
			LIMIT 1;


			
			", 
		
			array(

				":iduser"=>$iduser

			)//end array

		);//end select

				


		if ( count($results) > 0 )
		{
			# code...
			if ( $_SERVER['HTTP_HOST'] == Rule::CANONICAL_NAME  ) 
			{
				
				//$data['desperson'] = utf8_encode($data['desperson']);
				$results[0]['desperson'] = utf8_encode($results[0]['desperson']);
				$results[0]['desnick'] = utf8_encode($results[0]['desnick']);
				
			}//end if
			

			$this->setData($results[0]);


		}//end if

	}//END get































	public function update()
	{
		$sql = new Sql();

		

		

			
		$results = $sql->select("
		
		CALL sp_users_update(
			
			:iduser,
			:deslogin,
			:despassword, 
			:instatus, 
			:inautostatus, 
			:inadmin, 
			:inlead, 
			:inseller, 
			:inbuyer, 
			:inregister,
			:inaccount,
			:interms,
			:desipterms,
			:dtterms,
			:desperson,
			:desnick,
			:nrcountryarea, 
			:nrddd,
			:nrphone,
			:intypedoc, 
			:desdocument,
			:desphoto, 
			:desextension,
			:dtbirth
		
		)", 
		
		array(

			":iduser"=>$this->getiduser(),
			":deslogin"=>$this->getdeslogin(),
			":despassword"=>$this->getdespassword(),
			":instatus"=>$this->getinstatus(),
			":inautostatus"=>$this->getinautostatus(),
			":inadmin"=>$this->getinadmin(),
			":inlead"=>$this->getinlead(),
			":inseller"=>$this->getinseller(),
			":inbuyer"=>$this->getinbuyer(),
			":inregister"=>$this->getinregister(),
			":inaccount"=>$this->getinaccount(),
			":interms"=>$this->getinterms(),
			":desipterms"=>$this->getdesipterms(),
			":dtterms"=>$this->getdtterms(),
			":desperson"=>$this->getdesperson(),
			":desnick"=>$this->getdesnick(),
			":nrcountryarea"=>$this->getnrcountryarea(),
			":nrddd"=>$this->getnrddd(),
			":nrphone"=>$this->getnrphone(),
			":intypedoc"=>$this->getintypedoc(),
			":desdocument"=>$this->getdesdocument(),
			":desphoto"=>$this->getdesphoto(),
			":desextension"=>$this->getdesextension(),
			":dtbirth"=>$this->getdtbirth()

		)//end array
	
	);//end select

	
		


		
	
		if(count($results) > 0)
		{

			$this->setData($results[0]);


		}//end if
		



	}//END update




















	/*
	public function update()
	{
		$sql = new Sql();

		



		if ( $_SERVER['HTTP_HOST'] == Rule::CANONICAL_NAME  ) 
		{
			# code...

			$results = $sql->select("
		
				CALL sp_users_update(
					
					:iduser,
					:deslogin,
					:despassword, 
					:instatus, 
					:inautostatus, 
					:inadmin, 
					:inlead, 
					:inseller, 
					:inbuyer, 
					:inregister,
					:inaccount,
					:interms,
					:desipterms,
					:dtterms,
					:desperson,
					:desnick,
					:nrcountryarea, 
					:nrddd,
					:nrphone,
					:intypedoc, 
					:desdocument,
					:desphoto, 
					:desextension,
					:dtbirth
				
				)", 
				
				array(

					":iduser"=>$this->getiduser(),
					":deslogin"=>$this->getdeslogin(),
					":despassword"=>$this->getdespassword(),
					":instatus"=>$this->getinstatus(),
					":inautostatus"=>$this->getinautostatus(),
					":inadmin"=>$this->getinadmin(),
					":inlead"=>$this->getinlead(),
					":inseller"=>$this->getinseller(),
					":inbuyer"=>$this->getinbuyer(),
					":inregister"=>$this->getinregister(),
					":inaccount"=>$this->getinaccount(),
					":interms"=>$this->getinterms(),
					":desipterms"=>$this->getdesipterms(),
					":dtterms"=>$this->getdtterms(),
					":desperson"=>utf8_decode($this->getdesperson()),
					":desnick"=>utf8_decode($this->getdesnick()),
					":nrcountryarea"=>$this->getnrcountryarea(),
					":nrddd"=>$this->getnrddd(),
					":nrphone"=>$this->getnrphone(),
					":intypedoc"=>$this->getintypedoc(),
					":desdocument"=>$this->getdesdocument(),
					":desphoto"=>$this->getdesphoto(),
					":desextension"=>$this->getdesextension(),
					":dtbirth"=>$this->getdtbirth()

				)//end array
			
			);//end select


			$results[0]['desperson'] = utf8_encode($results[0]['desperson']);
			$results[0]['desnick'] = utf8_encode($results[0]['desnick']);
			//$results[0]['desdomain'] = utf8_encode($results[0]['desdomain']);

			
			

		}//end if
		else
		{


			
			$results = $sql->select("
		
				CALL sp_users_update(
					
					:iduser,
					:deslogin,
					:despassword, 
					:instatus, 
					:inautostatus, 
					:inadmin, 
					:inlead, 
					:inseller, 
					:inbuyer, 
					:inregister,
					:inaccount,
					:interms,
					:desipterms,
					:dtterms,
					:desperson,
					:desnick,
					:nrcountryarea, 
					:nrddd,
					:nrphone,
					:intypedoc, 
					:desdocument,
					:desphoto, 
					:desextension,
					:dtbirth
				
				)", 
				
				array(

					":iduser"=>$this->getiduser(),
					":deslogin"=>$this->getdeslogin(),
					":despassword"=>$this->getdespassword(),
					":instatus"=>$this->getinstatus(),
					":inautostatus"=>$this->getinautostatus(),
					":inadmin"=>$this->getinadmin(),
					":inlead"=>$this->getinlead(),
					":inseller"=>$this->getinseller(),
					":inbuyer"=>$this->getinbuyer(),
					":inregister"=>$this->getinregister(),
					":inaccount"=>$this->getinaccount(),
					":interms"=>$this->getinterms(),
					":desipterms"=>$this->getdesipterms(),
					":dtterms"=>$this->getdtterms(),
					":desperson"=>$this->getdesperson(),
					":desnick"=>$this->getdesnick(),
					":nrcountryarea"=>$this->getnrcountryarea(),
					":nrddd"=>$this->getnrddd(),
					":nrphone"=>$this->getnrphone(),
					":intypedoc"=>$this->getintypedoc(),
					":desdocument"=>$this->getdesdocument(),
					":desphoto"=>$this->getdesphoto(),
					":desextension"=>$this->getdesextension(),
					":dtbirth"=>$this->getdtbirth()

				)//end array
			
			);//end select

	        


		}//end else

		


		
	
		if(count($results) > 0)
		{

			$this->setData($results[0]);


		}//end if
		



	}//END update
	*/





























	public function delete()
	{
		$sql = new Sql();

		$sql->query("
		
			CALL sp_users_delete(:iduser)
		
			", 
		
			array(

				":iduser"=>$this->getiduser()
			
			)//end array
		
		);//end query

	}//END delete





















	public static function getMachine( $iduser )
    {

        $sql = new Sql();

        $query = "

			SELECT * FROM tb_users a
			INNER JOIN tb_usersmachines b ON a.iduser = b.iduser
			INNER JOIN tb_machines c ON b.idmachine = c.idmachine
			WHERE b.iduser = :iduser
			ORDER BY b.dtregister DESC
        
        ";

        
        $results = $sql->select( $query, [

            'iduser'=>$iduser


        ]);

        

        return $results;


    }//end method








	public static function saveMachine( $iduser, $idmachine )
	{

		$sql = new Sql();

		$query =  "
		
			INSERT INTO tb_usersmachines (iduser,idmachine)
			VALUES (:iduser,:idmachine)
		
		";

		$sql->query( $query,[

			':iduser'=>$iduser,
			':idmachine'=>$idmachine


		]);

		return true;




	}//end method














	public static function deleteMachine( $idusermachine )
	{

		$sql = new Sql();

		$query =  "
		
			DELETE FROM tb_usersmachines
			WHERE idusermachine = :idusermachine
		
		";

		$sql->query( $query,[

			':idusermachine'=>$idusermachine


		]);

		return true;




	}//end method










	public static function getForgot( $deslogin, $inadmin = true )
	{



		$sql = new Sql();


		
		$results = $sql->select("

			SELECT * FROM tb_users a
			INNER JOIN tb_persons b ON a.idperson = b.idperson
			WHERE a.deslogin = :deslogin
			ORDER BY a.dtregister DESC
			LIMIT 1;

			", 
			
			array(

				":deslogin"=>$deslogin
		
			)//end array
		
		);//end select


		
		

		if( count($results) === 0 )
		{
			
			throw new \Exception("Não foi possível recuperar a senha");

		}//end if
		else
		{

			$data = $results[0];

			


			if ( $_SERVER['HTTP_HOST'] == Rule::CANONICAL_NAME  ) 
			{
				
				$data['desnick'] = utf8_encode($data['desnick']);
				$data['desperson'] = utf8_encode($data['desperson']);
				
			}//end if




			
			$results2 = $sql->select("
			
				CALL sp_userspasswordsrecoveries_create(:iduser, :desip)
				
				", 
				
				array(
					
					":iduser"=>$data['iduser'],
					":desip"=>$_SERVER['REMOTE_ADDR']

				)//end array
			
			);//end select


			

			
			
			if ( count($results2) === 0 )
			{

				throw new \Exception("Não foi possível recuperar a senha.");

			}//end if
			else
			{

				$dataRecovery = $results2[0];

			


				$iv = random_bytes( openssl_cipher_iv_length('AES-256-CBC') );
				
				

				

				$code = openssl_encrypt(
					
					$dataRecovery['idrecovery'], 

					'AES-256-CBC', 

					User::SECRET, 

					0, 

					$iv
				
				);//end openssl_encrypt



				
				$result = base64_encode($iv.$code);

	

				
				if( $inadmin === true ) 
				{

					$link = "https://bemcasei.com.br/481738admin/recuperar-senha/redefinir?code=$result";

				}//end if
				else
				{

					$link = "https://bemcasei.com.br/recuperar-senha/redefinir?code=$result";
				
				}//end else

			
				
				$mailer = new MailerPasswordRecovery(
					
					
					Rule::EMAIL_PASSWORD_RECOVERY,

					"forgot", 
					
					array(

						"name"=>$data['desperson'],
						"link"=>$link

					),

					$data['deslogin'],

					$data['desperson']
				
				);//end Mailer
				
				$mailer->send();
				
				# Aula 106 (28:16)
				// return $link;
				return $data;

			}//end else

		}//end else

	}//END getForgot










	public static function setRecovery( $deslogin, $inadmin = true )
    {


        $sql = new Sql();

        $query = "
        
            SELECT * FROM tb_users a
            INNER JOIN tb_persons b ON a.idperson = b.idperson
            WHERE a.deslogin = :deslogin
            ORDER BY a.dtregister DESC
            LIMIT 1; 
        
        ";

        $results = $sql->select( $query, [


            ':deslogin'=>$deslogin


        ]);


		


        if( count( $results ) === 0 )
        {

            throw new \Exception( Rule::ERROR_SET_RECOVERY );


        }//end if
        else
        {


            $dataUser = $results[0];


            $query2 = "
            
                CALL sp_userspasswordsrecoveries_create( :iduser, :desip )
            
            
            ";



            $results2 = $sql->select( $query2, [

                ':iduser'=>$dataUser['iduser'],
                ':desip'=>$_SERVER['REMOTE_ADDR']

            ]);




			


            if( count( $results2 ) === 0 )
            {

                throw new \Exception( Rule::ERROR_SET_RECOVERY );


            }//end if
            else
            {

                $dataRecovery = $results2[0];

                
                $iv = random_bytes( openssl_cipher_iv_length( 'AES-256-CBC' ) );


                $encryptedMessage = openssl_encrypt(

                    $dataRecovery['idrecovery'],

                    'AES-256-CBC',

                    User::SECRET,

                    0,

                    $iv


                );


                $code = Validate::setHash( $iv . $encryptedMessage );

                if( is_bool( $code ) && $code === false )
                {

                    throw new \Exception( Rule::ERROR_SET_RECOVERY );

                }//end if




                if ( !$inadmin ) 
                {

                    //USUARIO COMUMM
                    $link = Rule::DOMAIN_PRODUCTION."/".
                    Rule::URI_RECOVERY."/".
                    Rule::URI_RECOVERY_SENT."?codigo=$code";
                    
                    
                } //end if
                else 
                {


                    //USUARIO ADMINISTRADOR

                    $link = Rule::DOMAIN_PRODUCTION."/".
                    Rule::URI_ADMIN."/".
                    Rule::URI_RECOVERY."/".
                    Rule::URI_RECOVERY_SENT."?codigo=$code";


                    
                }//end else

                
                
                
                $mailer = new Mailer(

                    Rule::EMAIL_RECOVERY_SUBJECT,

                    "recovery",
                    

                    array(

                        "user"=>$dataUser,
                        "link"=>$link


                    ),

                    $dataUser['deslogin'],

                    $dataUser['deslogin']


                );


                $mailer->send();


                return $dataUser;


                /*
                echo "<pre>";
                var_dump($dataUser);
                var_dump($iv);
                var_dump($encryptedMessage);
                var_dump($code);
                var_dump($link);
                echo "<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>";
                exit;
                */



            }//end else


            


        }//end else



       



    }//end method






















































	public static function validForgotDecrypt( $code )
	{


	    $result = base64_decode($code);

	    
	    
			
	    
	    $code = mb_substr(
			
			$result, 

			openssl_cipher_iv_length('AES-256-CBC'),

			null, 

			'8bit'
		
		);//end mb_substr

	
		
	    $iv = mb_substr(
			
			$result, 

			0, 

			openssl_cipher_iv_length('AES-256-CBC'),

			'8bit'

		);//end mb_substr

	    	
		
	
		
	    $idrecovery = openssl_decrypt(
			
			$code, 

			'AES-256-CBC', 
			
			User::SECRET, 
			
			0,
			
			$iv
		
		);//end openssl_decrypt


		


	    $sql = new Sql();
	    
		$results = $sql->select("
		
	        SELECT * FROM tb_userspasswordsrecoveries a
	        INNER JOIN tb_users b ON a.iduser = b.iduser
	        INNER JOIN tb_persons c ON b.idperson = c.idperson
	        WHERE a.idrecovery = :idrecovery AND
	        a.dtrecovery IS NULL AND
			DATE_ADD(a.dtregister, INTERVAL 1 HOUR) >= NOW();
			
			", 
			
			array(

	        	":idrecovery"=>$idrecovery

			)//end array
		
		);//end select



		
		
		
		 

	    if( count($results) === 0 )
	    {

			throw new \Exception("Não foi possível recuperar a senha");
			
	    }//end if
	    else
	    {

	    	if ( $_SERVER['HTTP_HOST'] == Rule::CANONICAL_NAME  ) 
			{
				
				$results[0]['desperson'] = utf8_encode($results[0]['desperson']);	
				$results[0]['desnick'] = utf8_encode($results[0]['desnick']);	
				
			}//end if



	    	return $results[0];

	    }//end else

	}//END validForgotDecrypt











	public static function getRecovery( $code )
	{

		
		
		$ivAndEncryptedMessage = Validate::getHash( $code );

		if( is_bool( $ivAndEncryptedMessage ) && $ivAndEncryptedMessage === false )
		{

			throw new \Exception( Rule::ERROR_GET_RECOVERY );

		}//end if


		

		

		$iv = mb_substr(

			$ivAndEncryptedMessage,

			0,

			openssl_cipher_iv_length( 'AES-256-CBC' ),

			'8bit'


		);






		$encryptedMessage = mb_substr(

			$ivAndEncryptedMessage,

			openssl_cipher_iv_length( 'AES-256-CBC' ),

			null,

			'8bit'


		);





		$idrecovery = openssl_decrypt(


			$encryptedMessage,

			'AES-256-CBC',

			User::SECRET,

			0,

			$iv


		);


		




		if( (int)$idrecovery === 0 )
		{

			throw new \Exception( Rule::ERROR_GET_RECOVERY );


		}//end if
		else
		{


			$sql = new Sql();

			$query = "
			
				SELECT * FROM tb_userspasswordsrecoveries a
				INNER JOIN tb_users b ON a.iduser = b.iduser
				INNER JOIN tb_persons c ON b.idperson = c.idperson
				WHERE a.idrecovery = :idrecovery AND
				a.dtrecovery IS NULL AND
				DATE_ADD( a.dtregister, INTERVAL 1 HOUR ) >= NOW();
			
			
			";

			$results = $sql->select( $query, [

				':idrecovery'=>$idrecovery


			]);

			
			

			if( count( $results ) === 0 )
			{

				throw new \Exception( Rule::ERROR_GET_RECOVERY );


			}//end if
			else
			{

				return $results[0];


			}//end else
			


		}//end else
				



		



		



	}//end method

















































	public static function setForgotUsed( $idrecovery )
	{
		$sql = new Sql();

		$sql->query("
		
			UPDATE tb_userspasswordsrecoveries 
			SET dtrecovery = NOW()
			WHERE idrecovery = :idrecovery
			
			", 
			
			array(

				":idrecovery"=>$idrecovery

			)//end array
		
		);//end query

	}//END setForgotUsed









	public static function setDateRecovery( $idrecovery )
    {


        $sql = new Sql();

        $query = "
        
            UPDATE tb_recoveries
            SET dtrecovery = NOW()
            WHERE idrecovery = :idrecovery;
        
        
        ";

        $sql->query( $query, [


            ':idrecovery'=>$idrecovery


        ]);




    }//end method





















































	public function setPassword( $password )
	{
		$sql = new Sql();

		$sql->query("
		
			UPDATE tb_users 
			SET despassword = :password
			WHERE iduser = :iduser
			
			", 
			
			array(

				"password"=>$password,
				":iduser"=>$this->getiduser()

			)//end array
		
		);//end query

	}//END setPassword












































	public static function setError( $msg )
	{

		$_SESSION[User::ERROR] = $msg;

	}//END setError








	public static function getError()
	{

		$msg = (isset($_SESSION[User::ERROR]) && $_SESSION[User::ERROR]) ? $_SESSION[User::ERROR] : '';

		User::clearError();

		return $msg;

	}//END getError








	public static function clearError()
	{
		$_SESSION[User::ERROR] = NULL;

	}//END clearError
	







	public static function setSuccess( $msg )
	{

		$_SESSION[User::SUCCESS] = $msg;

	}//END setSuccess










	public static function getSuccess()
	{

		$msg = (isset($_SESSION[User::SUCCESS]) && $_SESSION[User::SUCCESS]) ? $_SESSION[User::SUCCESS] : '';

		User::clearSuccess();

		return $msg;

	}//END getSuccess








	public static function clearSuccess()
	{
		$_SESSION[User::SUCCESS] = NULL;

	}//END clearSuccess










	public static function setErrorRegister( $msg )
	{
		$_SESSION[User::ERROR_REGISTER] = $msg;
		
	}//END setErrorRegister








	public static function getErrorRegister()
	{
		$msg = (isset($_SESSION[User::ERROR_REGISTER]) && $_SESSION[User::ERROR_REGISTER]) ? $_SESSION[User::ERROR_REGISTER] : '';

		User::clearErrorRegister();

		return $msg;

	}//END getErrorRegister








	public static function clearErrorRegister()
	{
		$_SESSION[User::ERROR_REGISTER] = NULL;
		
	}//END clearErrorRegister













	public static function checkLoginExists( $login )
	{
		$sql = new Sql();

		$results = $sql->select("

			SELECT * FROM tb_users
			WHERE deslogin = :deslogin;
			ORDER BY dtregister DESC
			LIMIT 1;

			", 
			
			[

				':deslogin'=>$login

			]
		
		);//end select

		

		# Colocar o 'count' entre parênteses equivale a um if.
		# If count count($results) > 0 , retorna TRUE
		# If count count($results) = 0 , retorna FALSE


		return ( count($results) > 0 );

		
		/*if ( count($results) > 0 ) 
		{
			# code...

			return $results[0];

		}//end if
		else
		{
			return false;
		}//end else*/

	}//END checkLoginExists













































	public function getFromUrl( $desdomain )
	{
		$sql = new Sql();

		$results = $sql->select("
		
			SELECT * FROM tb_users a 
			INNER JOIN tb_persons b ON a.idperson = b.idperson
			WHERE a.desdomain = :desdomain
			ORDER BY a.dtregister DESC
			LIMIT 1;
			
			", 
		
			array(

				":desdomain"=>$desdomain

			)//end array

		);//end select

		if( count($results) > 0 )
		{

			if ( $_SERVER['HTTP_HOST'] == Rule::CANONICAL_NAME  ) 
			{
				
				$results[0]['desperson'] = utf8_encode($results[0]['desperson']);
				$results[0]['desnick'] = utf8_encode($results[0]['desnick']);
					
				
			}//end if
			
		
			$this->setData($results[0]);

		}//end if

		


	}//END getFromUrl






	






































	public static function checkDesdomain( $desdomain )
	{

		$sql = new Sql();

		$results = $sql->select("
		
			SELECT * FROM tb_users
			WHERE desdomain = :desdomain
			ORDER BY dtregister
			LIMIT 1;
			
			", 
		
			array(

				":desdomain"=>$desdomain

			)//end array

		);//end select


		

		return ( count($results) > 0 );

		
	}//END getFromUrl



















































	public static function validatePlan( $plans, $inplancontext, $inautostatus )
	{

				
			
		//$timezone = new DateTimeZone('America/Sao_Paulo');

		$dt_now = new \DateTime('now');

		//$dt_now->setTimezone($timezone);

		//$dt_plan_end = new \DateTime($dtplanend);

		//$dtplanend->setTimezone($timezone);


		
		

		if( (int)$inautostatus == 0 )
		{

			return false;


		}//end if
		elseif ( (int)$inplancontext == 0 ) 
		{
			# code...

			return true;

		}//end else
		else
		{

			foreach ( $plans['results'] as $row ) 
			{
				# code...
				
					

				//Pagamento com Cartão
				
				if (

					in_array((int)$row['inpaymentmethod'], [1,2,3])

				)
				{
					if( 

						(int)$row['inpaymentstatus'] == 1
						||
						(int)$row['inpaymentstatus'] == 2
						||
						(int)$row['inpaymentstatus'] == 3
						||
						(int)$row['inpaymentstatus'] == 4
						||
						(int)$row['inpaymentstatus'] == 5
						||
						(int)$row['inpaymentstatus'] == 9

					)
					{

						$dtend = new \DateTime($row['dtend']);

						if ( $dtend < $dt_now ) break;

						return $row;

					}//end if
					

				}//end if
				elseif( (int)$row['inpaymentmethod'] == 0 )
				{

					//Pagamento em Boleto
					if( 
		
						(int)$row['inpaymentstatus'] == 5
						||
						(int)$row['inpaymentstatus'] == 9

					)
					{

						$dtend = new \DateTime($row['dtend']);

						if ( $dtend < $dt_now  ) break;

						return $row;

					}//end if

				}//end else


			}//end foreach


			return false;


		}//end else

			
			


	}//validatePlanEnd
































































	public static function validatePlanDashboard( $user )
	{

		//backup
		//$user = User::getFromSession();





		/*echo '<pre>';
		var_dump('--------------------');
		var_dump($user);
		var_dump((int)$user->getinplancontext() != 0);
		exit;*/
		



		$plans = [];


		if( (int)$user->getinplancontext() != 0 )
		{

			$plan = new Plan();

			$plans = $plan->get((int)$user->getiduser());

		}//end if


		return User::validatePlan( $plans, $user->getinplancontext(), $user->getinautostatus() );



	}//end validatePlanEnd























	




	public function getTemplate()
	{
		$template = '';

		switch( $this->getidtemplate() ) 
		{
			case '1':
				# code...
				$template = '1';
				break;
		
			case '2':
				# code...
				$template = '2';
				break;

			case '3':
				# code...
				$template = '3';
				break;


			case '4':
				# code...
				$template = '4';
				break;

			case '5':
				# code...
				$template = '5';
				break;
			
			

		}//end switch

		return $template;
		
	}//END getTemplate



























	public static function checkUrlExists( $desdomain )
	{

		$sql = new Sql();

		$results = $sql->select("

			SELECT * FROM tb_users
			WHERE desdomain = :desdomain
			ORDER BY dtregister
			LIMIT 1;

			", 
			
			[

				':desdomain'=>$desdomain

			]
		
		);//end select



		

		# Colocar o 'count' entre parênteses equivale a um if.
		# If count count($results) > 0 , retorna TRUE
		# If count count($results) = 0 , retorna FALSE
		
		return ( count($results) > 0 );

	}//END checkDomainExists













	public static function getPasswordHash( $password )
	{
		return password_hash(
			
			$password, 
			
			PASSWORD_DEFAULT, 
			
			[

				'cost'=>12

			]
		
		);//end password_hash

	}//END getPasswordHash








	public function getOrders()
	{

		$sql = new Sql();

		$results = $sql->select("

			SELECT *
			FROM tb_orders a
			INNER JOIN tb_carts b ON a.idcart = b.idcart
			INNER JOIN tb_users c ON a.iduser = d.iduser
			INNER JOIN tb_persons b ON a.idperson = b.idperson
			WHERE a.iduser = :iduser

			", 
			
			[

				':iduser'=>$this->getiduser()

			]
		
		);//end select

		


		if ( count($results) > 0 ) 
		{
			# code...
			if ( $_SERVER['HTTP_HOST'] == Rule::CANONICAL_NAME  ) 
			{
				
				foreach( $results as &$row )
				{
					# code...		
					$row['desperson'] = utf8_encode($row['desperson']);
					$row['desnick'] = utf8_encode($row['desnick']);
					

				}//end foreach
				
			}//end if


			return $results;


		}//end if

	}//END getOrders








	public static function getPage( $page = 1, $itensPerPage = 10 )
	{


		$start = ($page - 1) * $itensPerPage;

		$sql = new Sql();

		$results = $sql->select("

			SELECT SQL_CALC_FOUND_ROWS *
			FROM tb_users a 
			INNER JOIN tb_persons b ON a.idperson = b.idperson
			ORDER BY a.dtregister DESC
			LIMIT $start, $itensPerPage;

		");//end select


		
		$resultTotal = $sql->select("
		
			SELECT FOUND_ROWS() AS nrtotal;
		
		");//end select


		
		/*
		if ( count($results) > 0 )
		{
			# code...

			if ( $_SERVER['HTTP_HOST'] == Rule::CANONICAL_NAME  ) 
			{
				
				$results[0]['desperson'] = utf8_encode($results[0]['desperson']);
				$results[0]['desnick'] = utf8_encode($results[0]['desnick']);
				
			}//end if

		}//end if
		*/

		return [

			'data'=>$results,
			'total'=>(int)$resultTotal[0]["nrtotal"],
			'pages'=>ceil($resultTotal[0]["nrtotal"] / $itensPerPage),
			'nrtotal'=>$resultTotal[0]["nrtotal"]

		];//end return




	}//END getPage








	public static function getPageSearch( $search, $page = 1, $itensPerPage = 10 )
	{

		$start = ($page - 1) * $itensPerPage;

		$sql = new Sql();

		$results = $sql->select("

			SELECT SQL_CALC_FOUND_ROWS *
			FROM tb_users a 
			INNER JOIN tb_persons b ON a.idperson = b.idperson
			WHERE a.deslogin = :search OR b.desperson LIKE :searchlike OR a.deslogin LIKE :searchlike
			ORDER BY a.dtregister DESC
			LIMIT $start, $itensPerPage;

			", 
			
			[

				':searchlike'=>'%'.$search.'%',
				':search'=>$search

			]
		
		);//end select



		$resultTotal = $sql->select("
		
			SELECT FOUND_ROWS() AS nrtotal;
			
		");//end select




		if ( count($results) > 0 )
		{
			# code...
			if ( $_SERVER['HTTP_HOST'] == Rule::CANONICAL_NAME  ) 
			{
				
				$results[0]['desperson'] = utf8_encode($results[0]['desperson']);
				$results[0]['desnick'] = utf8_encode($results[0]['desnick']);
				
			}//end if

		}//end if


		return [

			'data'=>$results,
			'total'=>(int)$resultTotal[0]["nrtotal"],
			'pages'=>ceil($resultTotal[0]["nrtotal"] / $itensPerPage),
			'nrtotal'=>$resultTotal[0]["nrtotal"]

		];//end return


	}//END getPageSearch





















	public static function getSiteSearch( $search, $page = 1, $itensPerPage = 10 )
	{
		

		if ( $_SERVER['HTTP_HOST'] == Rule::CANONICAL_NAME  )
		{

			$search = utf8_decode($search);

		}//end if



		$start = ($page - 1) * $itensPerPage;

		$sql = new Sql();


		$results = $sql->select("

			SELECT a.desdomain,
			b.desperson,
			b.desnick,
			c.desconsort,
            d.dtwedding,
            e.descity,
            e.desstatecode,
            e.descountry,
            e.descountrycode,
            f.desbanner
			FROM tb_users a 
			INNER JOIN tb_persons b ON a.idperson = b.idperson
			INNER JOIN tb_consorts c ON a.iduser = c.iduser
			INNER JOIN tb_weddings d ON a.iduser = d.iduser
            INNER JOIN tb_addresses e ON a.iduser = e.iduser
            INNER JOIN tb_customstyle f ON a.iduser = f.iduser
			WHERE a.desdomain IS NOT NULL AND b.desperson LIKE :searchlike
			OR a.desdomain IS NOT NULL AND b.desnick LIKE :searchlike
			OR a.desdomain IS NOT NULL AND c.desconsort LIKE :searchlike
			ORDER BY b.desperson,
			a.dtregister DESC
			LIMIT $start, $itensPerPage;


			", 
			
			[

				':searchlike'=>'%'.$search.'%'
				//':search'=>$search

			]
		
		);//end select



		$nrtotal = $sql->select("
		
			SELECT FOUND_ROWS() AS nrtotal;
			
		");//end select





		if ( count($results) > 0 )
		{
			# code...
			if ( $_SERVER['HTTP_HOST'] == Rule::CANONICAL_NAME  ) 
			{
				
				foreach ($results as &$row)
				{
					# code...
					$row['desperson'] = utf8_encode($row['desperson']);	
					$row['desnick'] = utf8_encode($row['desnick']);	
					$row['desconsort'] = utf8_encode($row['desconsort']);
					$row['descity'] = utf8_encode($row['descity']);

				}//end foreach
				
			}//end if

		}//end if


		return [

			'results'=>$results,
			'total'=>(int)$nrtotal[0]["nrtotal"],
			'pages'=>ceil($nrtotal[0]["nrtotal"] / $itensPerPage)

		];//end return

			

	}//END getPageSearch






































	public static function getPageMailingSearch( $search, $page = 1, $itensPerPage = 10 )
	{
		

		if ( $_SERVER['HTTP_HOST'] == Rule::CANONICAL_NAME  )
		{

			$search = utf8_decode($search);

		}//end if



		$start = ($page - 1) * $itensPerPage;

		$sql = new Sql();


		$results = $sql->select("

			SELECT a.desdomain,
			b.desnick,
			c.desconsort,
            d.dtwedding,
            e.descity,
            e.desstatecode,
            e.descountry,
            e.descountrycode,
            f.desbanner
			FROM tb_users a 
			INNER JOIN tb_persons b ON a.idperson = b.idperson
			INNER JOIN tb_consorts c ON a.iduser = c.iduser
			INNER JOIN tb_weddings d ON a.iduser = d.iduser
            INNER JOIN tb_addresses e ON a.iduser = e.iduser
            INNER JOIN tb_customstyle f ON a.iduser = f.iduser
			WHERE a.desdomain IS NOT NULL AND b.desperson LIKE :searchlike
			OR a.desdomain IS NOT NULL AND b.desnick LIKE :searchlike
			OR a.desdomain IS NOT NULL AND c.desconsort LIKE :searchlike
			ORDER BY b.desperson,
			a.dtregister DESC
			LIMIT $start, $itensPerPage;


			", 
			
			[

				':searchlike'=>'%'.$search.'%'
				//':search'=>$search

			]
		
		);//end select



		$nrtotal = $sql->select("
		
			SELECT FOUND_ROWS() AS nrtotal;
			
		");//end select





		if ( count($results) > 0 )
		{
			# code...
			if ( $_SERVER['HTTP_HOST'] == Rule::CANONICAL_NAME  ) 
			{
				
				foreach ($results as &$row)
				{
					# code...
					$row['desperson'] = utf8_encode($row['desperson']);	
					$row['desnick'] = utf8_encode($row['desnick']);	
					$row['desconsort'] = utf8_encode($row['desconsort']);
					$row['descity'] = utf8_encode($row['descity']);

				}//end foreach
				
			}//end if

		}//end if


		return [

			'results'=>$results,
			'total'=>(int)$nrtotal[0]["nrtotal"],
			'pages'=>ceil($nrtotal[0]["nrtotal"] / $itensPerPage)

		];//end return

			

	}//END getPageSearch




































































}//END class User






 ?>