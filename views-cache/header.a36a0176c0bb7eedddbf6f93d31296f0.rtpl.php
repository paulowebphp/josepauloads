<?php if(!class_exists('Rain\Tpl')){exit;}?><!DOCTYPE html>
<html lang="pt-br">


<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<?php echo getSitePageConfig('metadescription'); ?>">
    

    <title><?php echo getSitePageConfig('pagetitle'); ?></title>
    <!-- <link rel="stylesheet" type="text/css" href="/res/css/bootstrap.min.css">-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/res/css/font-awesome.min.css">

    
    <link rel="stylesheet" type="text/css" href="/res/css/site/stylesheet0.css">
    <link rel="stylesheet" type="text/css" href="/res/css/site/stylesheet-landing1.css">

    <link rel="icon" type="image/png" href="/res/images/favicon/site/favicon.ico" />



    <?php if( checkIsProduction() ){ ?>

    <!-- Global site tag (gtag.js) - Google Ads: 10796668475 -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=AW-10796668475"></script>
    <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'AW-10796668475');
    </script>
    
    <?php } ?>

   

    
    
</head>



<body>


    <header>

        <header style="display:none!important;"></header>


    </header>