<?php


namespace Core\Model;

use \Core\Model;


class Feature extends Model
{

    public static function getFeature()
	{	


		$fullArray = [


			'0'=>[


                'title'=>'Palavras Chave Negativas',
                'cta'=>'Acesse aqui a Lista de Palavras Negativas para anunciar no Google Ads',
                'class'=>'button6',
                'desurl'=>'/lista',
                

            ],


			'1'=>[


                'title'=>'Palavras Chave Negativas em Espanhol',
                'cta'=>'Acesse aqui a Lista de Palavras Negativas para anunciar no Google Ads na Gringa',
                'class'=>'button7',
                'desurl'=>'/lista-espanhol',
                

            ],

            '2'=>[


                'title'=>'Gerador de Correspondência de Palavras-Chave pra Google Ads',
                'cta'=>'Utilize nosso Gerador para acrescentar Aspas    ou Colchetes!',
                'class'=>'button8',
                'desurl'=>'/gerador',
                

            ],

            '3'=>[


                'title'=>'Gerador de Hashtags pra Instagram',
                'cta'=>'Colque Hashtagns antes das suas palavras com nosso Gerador!',
                'class'=>'button9',
                'desurl'=>'/hashtags',
                

            ],






		];//end fullArray




		return $fullArray;

		
		


	}//END method

















    public static function getNegativeKeywords()
    {



        $fullArray = [


			'pt_br'=>[
            
            
                "download",
                "material",
                "club",
                "afiliados",
                "blog",
                "suporte",
                "reclamacao",
                "reclamações",
                "reclamação",
                "reclamacoes",
                "\".com.br\"",
                "funcion",
                "entrar",
                "\"de graça\"",
                "acessar",
                "cancelar",
                "\"reclame aqui\"",
                "\"qual o melhor\"",
                "\"é bom\"",
                "\"canal youtube\"",
                "\"como acessar\"",
                "youtube",
                "gratis",
                "grátis",
                "gratuito",
                "free",
                "0800",
                "pdf",
                "http",
                "https",
                "download",
                "login",
                "sobre",
                "acesso",
                "afiliado",
                "presencial",
                "sebrae",
                "senac",
                "\"mercado livre\"",
                "\"com.br\"",
                "\"google drive\"",
                "existe",
                "baixar",
                "acesse",
                "hotmart",
                "\"material de divulgação\"",
                "instagram",
                "medium",
                "idade",
                "\"quantos anos\"",
                "biografia",
                "wikipedia",
                "wiki",
                "wikipédia",
                "wikihow",
                "confiavel",
                "aluno",
                "depoimento",
                "depoimentos",
                "\"area de membros\"",
                "área",
                "membros",
                "reclame",
                "alunos",
                "torrent",
                "pubase",
                "loguim",
                "dowload",
                "reembolso",
                "contato",
                "telefone",
                "\"o que é\"",
                "whatsapp",
                "whatsap",
                "watsap",
                "watsapp",
                "whats",
                "wats",
                "telegram",
            
            
            ],



            'es'=>[


                "\".com.br\"",
                "abrir",
                "acceso",
                "afiliado",
                "afiliados",
                "alumno",
                "alumnos",
                "android",
                "apk",
                "app",
                "área",
                "\"área de miembros\"",
                "biografía",
                "blog",
                "\"canal de youtube\"",
                "cancelar",
                "clases",
                "clase",
                "club",
                "comentarios",
                "comercial",
                "\"cómo acceder\"",
                "contacto",
                "\"cuál es mejor\"",
                "deposiciones",
                "descargar",
                "\"es bueno\"",
                "estafa",
                "estudiantes",
                "funciona",
                "gratis",
                "gratuito",
                "free",
                "http",
                "ingresar",
                "instagran",
                "instagram",
                "libre",
                "linkedin",
                "faceboo",
                "fb",
                "face",
                "loguim",
                "login",
                "material",
                "medio",
                "membresia",
                "\"mercado libre\"",
                "\"mercado livre\"",
                "\".com\"",
                "bajar",
                "\"google drive\"",
                "\"acceso\"",
                "\"es bueno\"",
                "hotmart",
                "miembros",
                "membresia",
                "material",
                "medio",
                "opiniones",
                "pdf",
                "precio",
                "pubase",
                "\"qué es\"",
                "queja",
                "quejarse",
                "\"quejarse aquí\"",
                "reclamación",
                "reclamos",
                "reembolso",
                "refund",
                "review",
                "reviews",
                "\"sign in\"",
                "soporte",
                "teléfono",
                "testimonial",
                "testimonials",
                "testimonio",
                "testimonios",
                "torrent",
                "visualizar",
                "watsap",
                "watsapp",
                "webinar",
                "Whatsapp",
                "wikipedia",
                "youtube",



            ]






		];//end fullArray




		return $fullArray;





    }//end method

















    public static function getColor()
    {


        $fullArray = [


            0=>[

                'name'=>'Verde',
                'code'=>'39e09b',


            ],


            1=>[

                'name'=>'Fé 600',
                'code'=>'ffe600',


            ],


            2=>[

                'name'=>'Preto Texto',
                'code'=>'171f26',


            ],

            3=>[

                'name'=>'Azul Big Pack',
                'code'=>'1e2a74',


            ],

            2=>[

                'name'=>'Preto Texto',
                'code'=>'171f26',


            ],

            2=>[

                'name'=>'Preto Texto',
                'code'=>'171f26',


            ],

            2=>[

                'name'=>'Preto Texto',
                'code'=>'171f26',


            ],




        ];



        return $fullArray;




    }//end method
    















    public static function getFont()
    {


        $fullArray = [


            0=>[

                'name'=>'Verde',
                'code'=>'39e09b',


            ],


            1=>[

                'name'=>'Fé 600',
                'code'=>'ffe600',


            ],


            2=>[

                'name'=>'Preto Texto',
                'code'=>'171f26',


            ],

            3=>[

                'name'=>'Azul Big Pack',
                'code'=>'1e2a74',


            ],

            2=>[

                'name'=>'Preto Texto',
                'code'=>'171f26',


            ],

            2=>[

                'name'=>'Preto Texto',
                'code'=>'171f26',


            ],

            2=>[

                'name'=>'Preto Texto',
                'code'=>'171f26',


            ],




        ];



        return $fullArray;




    }//end method













}//end Class









?>