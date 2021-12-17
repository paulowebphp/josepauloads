<?php 

namespace Core\Model;


//use \Core\DB\Sql;
use \Core\Model;




class Album extends Model
{


	# Error - Success
	const SUCCESS = "Album-Success";
	const ERROR = "Album-Error";





	public static function getPortfolio()
	{	


		$fullArray = [


			'1'=>[

				'0'=>[


					'desphoto'=>'photo1.png',
					'desportfolio'=>'Wedding',
					'desurl'=>'https://wedding.ext2.com.br',
					'desdescription'=>'Marketplace Multi-vendor feito em PHP 7 Orientado a Objetos, JQuery e AJAX; utilizando Slim Framework; PHPMailer; RainTPL e Bootstrap; com integração com conta transparente Wirecard'
					

				],


				'1'=>[


					'desphoto'=>'photo9.jpg',
					'desportfolio'=>'Página de Vendas',
					'desurl'=>'https://domineoviolao.com.br/violao-do-zero-ao-intermediario',
					'desdescription'=>'Página de Captura para E-book no nicho de Violão, que envia e-mail para o Lead e possui uma Dashboard própria onde o Lead pode fazer login com seu e-mail e baixar o e-book (Você pode testar essas funcionalidades colocando o seu próprio e-mail nesta página)'

				],

				'2'=>[


					'desphoto'=>'photo2.jpg',
					'desportfolio'=>'Plugin WordPress',
					'desurl'=>'https://plugin.ext2.com.br/formulario-de-contato',
					'desdescription'=>'Plugin para WordPress de Cadastro de Produtos, o qual insere, consulta, atualiza ou deleta produtos, e cria uma Página de Busca para a consulta dos mesmos a partir do número de série;'

				],


				

				'3'=>[


					'desphoto'=>'photo4.png',
					'desportfolio'=>'E-book Store',
					'desurl'=>'https://e-book.ext2.com.br',
					'desdescription'=>'Loja Virtual feita em WordPress+WooCommerce e Elementor para venda de Produto Baixável (Downloadable Product). Para este projeto também foi desenvolvido um Plugin no Carrinho da Loja para atender as necessidades de customização do cliente.'

				],



				'4'=>[


					'desphoto'=>'photo5.png',
					'desportfolio'=>'Linha Projetos',
					'desurl'=>'https://linhaprojetos.com.br',
					'desdescription'=>'Site institucional de empresa de Consultoria feito em forma de Funil de Vendas (Landing Page) com WordPress e Elementor'

				],


				

				'5'=>[


					'desphoto'=>'photo6.jpg',
					'desportfolio'=>'Landing Page',
					'desurl'=>'https://landing.ext2.com.br',
					'desdescription'=>'Landing Page para captação de e-mails com download automático de ebook; área administrativa com o resumo dos últimos e-mails recebidos e download de arquivo CSV com a lista completa dos e-mails captados'

				],



				'6'=>[


					'desphoto'=>'photo7.png',
					'desportfolio'=>'Code Samples',
					'desurl'=>'https://code.ext2.com.br',
					'desdescription'=>'Site estilo ‘one page’ responsivo com algumas amostras dos meus códigos'

				],

				'7'=>[


					'desphoto'=>'photo8.jpg',
					'desportfolio'=>'Borussia',
					'desurl'=>'https://borussia.ext2.com.br',
					'desdescription'=>'Site responsivo simples sobre o Borussia Dortmund'

				]

			]//end template


		];//end fullArray




		return $fullArray[1];

		
		


	}//END method






















	public static function getCertificate( $index = 1 )
	{	


		$fullArray = [


			'1'=>[

				'0'=>[


					'desphoto'=>'photo1.jpg'
					
				],
				'1'=>[


					'desphoto'=>'photo2.jpg'
					
				],
				'2'=>[


					'desphoto'=>'photo3.jpg'
					
				],
				'3'=>[


					'desphoto'=>'photo4.jpg'
					
				],
				'4'=>[


					'desphoto'=>'photo5.jpg'
					
				],
				'5'=>[


					'desphoto'=>'photo6.jpg'
					
				],
				'6'=>[


					'desphoto'=>'photo7.jpg'
					
				],
				'7'=>[


					'desphoto'=>'photo8.jpg'
					
				],
				'8'=>[


					'desphoto'=>'photo9.png'
					
				],
				'9'=>[


					'desphoto'=>'photo10.jpg'
					
				],
				'10'=>[


					'desphoto'=>'photo11.jpg'
					
				],
				'11'=>[


					'desphoto'=>'photo12.jpg'
					
				],
				'12'=>[


					'desphoto'=>'photo13.jpg'
					
				],
				'13'=>[


					'desphoto'=>'photo14.jpg'
					
				],
				'14'=>[


					'desphoto'=>'photo15.jpg'
					
				],
				'15'=>[


					'desphoto'=>'photo16.jpg'
					
				],
				'16'=>[


					'desphoto'=>'photo17.png'
					
				],
				'17'=>[


					'desphoto'=>'photo18.jpg'
					
				],
				'18'=>[


					'desphoto'=>'photo19.jpg'
					
				],
				'19'=>[


					'desphoto'=>'photo20.jpg'
					
				],
				'20'=>[


					'desphoto'=>'photo21.jpg'
					
				],
				'21'=>[


					'desphoto'=>'photo22.jpg'
					
				],
				'22'=>[


					'desphoto'=>'photo23.jpg'
					
				],
				'23'=>[


					'desphoto'=>'photo24.jpg'
					
				],
				'24'=>[


					'desphoto'=>'photo25.jpg'
					
				],
				'25'=>[


					'desphoto'=>'photo26.jpg'
					
				],
				'26'=>[


					'desphoto'=>'photo27.jpg'
					
				],
				'27'=>[


					'desphoto'=>'photo28.jpg'
					
				],
				'28'=>[


					'desphoto'=>'photo29.jpg'
					
				],
				'29'=>[


					'desphoto'=>'photo30.jpg'
					
				],
				'30'=>[


					'desphoto'=>'photo31.jpg'
					
				],
				'31'=>[


					'desphoto'=>'photo32.jpg'
					
				],
				'32'=>[


					'desphoto'=>'photo33.jpg'
					
				],
				'33'=>[


					'desphoto'=>'photo34.jpg'
					
				]
				



				

			],//end template


			'2'=>[

				'0'=>[


					'desphoto'=>'photo35.jpeg'
					
				]		



				

			]//end template


		];//end fullArray

		


		return $fullArray[$index];

		
		


	}//END method



















	



	public static function getCases()
	{	


		$fullArray = [


			'1'=>[

				'0'=>[


					'desphoto'=>'case01.jpg',
					'desportfolio'=>'Monetizze',
					'desurl'=>'https://wedding.ext2.com.br',
					'desdescription'=>'Marketplace Multi-vendor feito em PHP 7 Orientado a Objetos, JQuery e AJAX; utilizando Slim Framework; PHPMailer; RainTPL e Bootstrap; com integração com conta transparente Wirecard'
					

				],


				'1'=>[


					'desphoto'=>'case02.jpg',
					'desportfolio'=>'Página de Vendas',
					'desurl'=>'https://domineoviolao.com.br/violao-do-zero-ao-intermediario',
					'desdescription'=>'Página de Captura para E-book no nicho de Violão, que envia e-mail para o Lead e possui uma Dashboard própria onde o Lead pode fazer login com seu e-mail e baixar o e-book (Você pode testar essas funcionalidades colocando o seu próprio e-mail nesta página)'

				],

				'2'=>[


					'desphoto'=>'case03.jpg',
					'desportfolio'=>'Plugin WordPress',
					'desurl'=>'https://plugin.ext2.com.br/formulario-de-contato',
					'desdescription'=>'Plugin para WordPress de Cadastro de Produtos, o qual insere, consulta, atualiza ou deleta produtos, e cria uma Página de Busca para a consulta dos mesmos a partir do número de série;'

				]

			]//end template


		];//end fullArray




		return $fullArray[1];

		
		


	}//END method



















	public static function setError( $msg )
	{

		$_SESSION[Album::ERROR] = $msg;

	}//END setError









	public static function getError()
	{

		$msg = (isset($_SESSION[Album::ERROR]) && $_SESSION[Album::ERROR]) ? $_SESSION[Album::ERROR] : '';

		Album::clearError();

		return $msg;

	}//END getError







	public static function clearError()
	{
		$_SESSION[Album::ERROR] = NULL;

	}//END clearError








	public static function setSuccess($msg)
	{

		$_SESSION[Album::SUCCESS] = $msg;

	}//END setSuccess






	public static function getSuccess()
	{

		$msg = (isset($_SESSION[Album::SUCCESS]) && $_SESSION[Album::SUCCESS]) ? $_SESSION[Album::SUCCESS] : '';

		Album::clearSuccess();

		return $msg;

	}//END getSuccess







	public static function clearSuccess()
	{
		$_SESSION[Album::SUCCESS] = NULL;

	}//END clearSuccess 











}//END class Album




 ?>