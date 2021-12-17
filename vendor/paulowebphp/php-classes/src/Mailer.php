<?php 

namespace Core;

use \Rain\Tpl;
//Import PHPMailer classes into the global namespace
use \PHPMailer\PHPMailer\PHPMailer;
use \PHPMailer\PHPMailer\Exception;
use \Core\PageEmail;

class Mailer
{


	const USERNAME = "contato@tesaodevaca.siteoficial-entrar.com.br";
	const PASSWORD = "KlE%af!eDGfA";
	const NAME_FROM = "Tvaca Oficial";

	//const USERNAME = "alonso@programaremphp.com.br";
	//const PASSWORD = "KlE%af!eDGfA";
	//const NAME_FROM = "Programar em PHP";


	
	private $mail;



	public function __construct(
		
		$name_from,
		$subject, 
		$tplName, 
		$data = array(),
		$toAddress, 
		$toName,
		$toAddress2 = '',
		$toName2 = ''
	
	)
	{

		/*
		$config = array(

			"tpl_dir"       => $_SERVER["DOCUMENT_ROOT"]."/views/email/",
			"cache_dir"     => $_SERVER["DOCUMENT_ROOT"]."/views-cache/",
			"debug"         => false // set to false to improve the speed

		);//end array

		Tpl::configure( $config );

		$tpl = new Tpl;

		foreach( $data as $key => $value )
		{
			# code...
			$tpl->assign($key, $value);

		}//end foreach

		$html = $tpl->draw($tplName, true);


		*/





		$page = new PageEmail([

            'header'=>false,
            'footer'=>false


        ]);

        $html = $page->setTpl( $tplName, $data, true );	



			


			
		

		



		$name_from = utf8_decode( $name_from );
		$subject = utf8_decode( $subject );
		$toName = utf8_decode( $toName );


		//$toAddress['desperson'] = utf8_decode( $toAddress['desperson'] );
		//$toAddress['desnick'] = utf8_decode( $toAddress['desnick'] );

		

		try 
		{
			// Instantiation and passing `true` enables exceptions
			$this->mail = new \PHPMailer();
		    

		    $this->mail->isSMTP();

		    #Hcode
		    $this->mail->SMTPOptions = array(
			
				'ssl' => array(

					'verify_peer' => false,
					'verify_peer_name' => false,
					'allow_self_signed' => true

				)

			);//end array

		    //Server settings
		    $this->mail->SMTPDebug = 0;

		    $this->mail->Debugoutput = 'html';                                      // Enable verbose debug output
		    	    

		                                                // Set mailer to use SMTP
		    $this->mail->Host       = 'br958.hostgator.com.br'; 
		    //$this->mail->Host       = 'mail.amarcasar.fat32.com.br'; 

		     // Specify main and backup SMTP servers
		    //$this->mail->Port       = 26;		//Alteração dos mequetrefe da Hostgator
		    $this->mail->Port       = 587;	//Padrão PHPMailer  
		    //$this->mail->SMTPSecure = '';	//Alteração dos mequetrefe da Hostgator - Enable TLS encryption, `ssl` also accepted
		    $this->mail->SMTPSecure = 'tls';	//Padrão PHP Mailer - Enable TLS encryption, `ssl` also accepted

		                                     // TCP port to connect to
		    //$this->mail->SMTPAuth   = false;	//Alteração dos mequetrefe da Hostgator
		    $this->mail->SMTPAuth   = true;	//Padrão PHP Mailer
		                                      // Enable SMTP authentication
		    $this->mail->Username   = Mailer::USERNAME;                     // SMTP username
		    $this->mail->Password   = Mailer::PASSWORD;                               // SMTP password

		    //Recipients
		    //$this->mail->setFrom(Mailer::USERNAME, utf8_decode(Mailer::NAME_FROM));
		    $this->mail->setFrom(Mailer::USERNAME, $name_from);



			$this->mail->addAddress( $toAddress, $toName );

		    //$this->mail->addAddress($toAddress, $row['deslogin']);     // Add a recipient
		    //mail->addAddress('ellen@example.com');               // Name is optional
		    //mail->addReplyTo('info@example.com', 'Information');
		    if( $toAddress2 != '' ) $this->mail->addAddress($toAddress2, $toName2);
		    //mail->addCC('cc@example.com');
		    //mail->addBCC('bcc@example.com');

		    // Attachments
		    $this->mail->addAttachment('/res/images/sparta.png');         // Add attachments
		    //mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name

		    // Content
		    $this->mail->Subject = $subject;

		    #Hcode
		    //$this->mail->msgHTML($html);

		    $this->mail->isHTML(true);                                  // Set email format to HTML
		    $this->mail->Body    = $html;
		    //$this->mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

		    //mail->send();
		    //echo 'Message has been sent';


		}//end try
		catch ( \Exception $e ) 
		{
			return false;
			
		}//end catch
				

	}//END __construct







	public function send()
	{
		try
		{

			return $this->mail->send();
			
		}//end try
		catch ( \Exception $e ) 
		{

			return false;
			
		}//end catch

	}//END send








	/*public function send()
	{
		return $this->mail->send();

	}//END send*/






	/*public function __construct(
		
		$toAddress, 
		$toName, 
		$subject, 
		$tplName, 
		$data = array()
	
	)
	{

		$config = array(

			"tpl_dir"       => $_SERVER["DOCUMENT_ROOT"]."/views/email/",
			"cache_dir"     => $_SERVER["DOCUMENT_ROOT"]."/views-cache/",
			"debug"         => false // set to false to improve the speed

		);//end array

		Tpl::configure( $config );

		$tpl = new Tpl;

		foreach( $data as $key => $value )
		{
			# code...
			$tpl->assign($key, $value);

		}//end foreach

		$html = $tpl->draw($tplName, true);





		//Create a new PHPMailer instance
		$this->mail = new \PHPMailer;

		//Tell PHPMailer to use SMTP

		#Método que prepara o tipo, qual formato, o que está querendo fazer, e prepara o PHP mailer para enviar o e-mail
		$this->mail->isSMTP();

		#HCODE
		$this->mail->SMTPOptions = array(
			
			'ssl' => array(

				'verify_peer' => false,
				'verify_peer_name' => false,
				'allow_self_signed' => true

			)

		);//end array

		//Enable SMTP debugging
		// 0 = off (for production use)
		#na produção não vai fazer nada
		// 1 = client messages
		#clientes simplificadas só para ver oq ue acontece dentro da classe
		// 2 = client and server messages
		#mensagens do usuario e mensagens do ambiente do server

		#certo é 2 quando estiver desaenvolvendo, 1 quando estiver fazendo testes e 0 quando estiver em produção
		$this->mail->SMTPDebug = 0;


		#Ask for HTML-friendly debug output
		$this->mail->Debugoutput = 'html';
		//Set the hostname of the mail server
		$this->mail->Host = 'smtp.gmail.com';
		#para usar outros servidores de e-mail, se estiver ocupado pasa do primeiro para o segundo, e assim vai (tem que ter o mesmo usuário e-mail que você estiver utilizando)

		#$this->mail->Host = 'smtp.gmail.com';'outro.servidor.de.e-mail;"mais.um.servidor.de-mail;
		// use
		// $this->mail->Host = gethostbyname('smtp.gmail.com');
		// if your network does not support SMTP over IPv6

		//Set the SMTP port number - 587 for authenticated TLS, a.k.a. RFC4409 SMTP submission
		$this->mail->Port = 587;

		//Set the encryption system to use - ssl (deprecated) or tls
		$this->mail->SMTPSecure = 'tls';

		#AUTENTICAÇÃO
		//Whether to use SMTP authentication
		$this->mail->SMTPAuth = true;

		//Username to use for SMTP authentication - use full email address for gmail
		$this->mail->Username = Mailer::USERNAME;

		//Password to use for SMTP authentication
		$this->mail->Password = Mailer::PASSWORD;

		#DEFINIR O REMETENTE, OU SEJA, "DE QUEM" ESTÁ SAINDO ESTE EMAIL, MAS VOCÊ PODE COLOCAR UM ALIAS (APELIDO)

		//Set who the message is to be sent from
		$this->mail->setFrom(Mailer::USERNAME, Mailer::NAME_FROM);

		#RESPONDER PARA, PODE SER OUTRO QUE NÃO SEJA O REMETENTE (NÃO É UM METODO OBRIGATORIO)

		//Set an alternative reply-to address
		#$this->mail->addReplyTo('replyto@example.com', 'First Last');

		#DESTINATARIO, QUEM EU QUISER ENVIAR, SE EU QUISER ENVIAR MAIS DE UM, DEVO DUPLICAR A LINHA, E COLOCAR VÁRIAS LINHAS

		//Set who the message is to be sent to
		$this->mail->addAddress($toAddress, $toName);
		#$this->mail->addAddress('jpccambraia@gmail.com', 'Jose 1');
		#$this->mail->addAddress('paulowebphp@gmail.com', 'Jose PHP');
		#$this->mail->addAddress('paulornc63@gmail.com', 'Paulo Roberto');

		#ASSUNTO (NÃO É UM MÉTODO, É UM ATRIBUTO)
		//Set the subject line
		$this->mail->Subject = $subject;

		//Read an HTML message body from an external file, convert referenced images to embedded,
		//convert HTML into a basic plain-text alternative body
		$this->mail->msgHTML($html);

		#Corpo Alternativo , se algum motivo haja um leitor de emails que não leia html, ele vai aparecer apenas texto

		//Replace the plain text body with one created manually
		$this->mail->AltBody = 'This is a plain-text message body';

		#COLOCAR ANEXOS NO EMAIL, colocar O CAMINHO DA IMAGEM POR EXEMPLO
		//Attach an image file
		#mail(to, subject, message)->addAttachment('images/phpmailer_mini.png');

		//send the message, check for errors
		# ESSA PARTE ENVIA O EMAIL AUTOMATICAMENTE, SEM TER UM MÉTODO SÓ PRA ISSO
		
		#if (!$mail->send()) {
		#    echo "Mailer Error: " . $mail->ErrorInfo;
		#} else {
		#    echo "Message sent!";
		#    //Section 2: IMAP
		#    //Uncomment these to save your message in the 'Sent Mail' folder.
		#    #if (save_mail($mail)) {
		#    #    echo "Message saved!";
		#    #}
		#}
		

		//Section 2: IMAP
		//IMAP commands requires the PHP IMAP Extension, found at: https://php.net/manual/en/imap.setup.php
		//Function to call which uses the PHP imap_*() functions to save messages: https://php.net/manual/en/book.imap.php
		//You can use imap_getmailboxes($imapStream, '/imap/ssl') to get a list of available folders or labels, this can
		//be useful if you are trying to get this working on a non-Gmail IMAP server.

		function save_mail($mail)
		{
		    //You can change 'Sent Mail' to any other folder or tag
		    $path = "{imap.gmail.com:993/imap/ssl}[Gmail]/Sent Mail";

		    //Tell your server to open an IMAP connection using the same username and password as you used for SMTP
		    $imapStream = imap_open($path, $mail->Username, $mail->Password);

		    $result = imap_append($imapStream, $path, $mail->getSentMIMEMessage());
		    imap_close($imapStream);

		    return $result;

		}//end save_mail

		

	}//END __construct*/







}//END class Mailer






 ?>