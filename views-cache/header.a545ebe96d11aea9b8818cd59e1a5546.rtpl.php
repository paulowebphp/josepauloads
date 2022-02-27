<?php if(!class_exists('Rain\Tpl')){exit;}?><!DOCTYPE html>
<html lang="pt-br">


<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<?php echo getSitePageConfig('metadescription'); ?>">
    <?php if( getSitePageConfig('noindex') == 1 ){ ?>
    <meta name="robots" content="noindex">
    <?php } ?>

    <title><?php echo getSitePageConfig('pagetitle'); ?></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

    <?php if( checkLandingUri('landing1') ){ ?>
    <link rel="stylesheet" type="text/css" href="/res/css/site/stylesheet0.css">
    <link rel="stylesheet" type="text/css" href="/res/css/site/stylesheet-landing1.css">
    <link rel="icon" type="image/png" href="/res/images/favicon/site/landing1/favicon.ico" />
    <?php }elseif( checkLandingUri('landing2') ){ ?>
    <link rel="stylesheet" type="text/css" href="/res/css/site/stylesheet0.css">
    <link rel="stylesheet" type="text/css" href="/res/css/site/stylesheet-landing2.css">
    <link rel="icon" type="image/png" href="/res/images/favicon/site/landing1/favicon.ico" />
    <?php }elseif( checkLandingUri('landing3') ){ ?>
    <link rel="stylesheet" type="text/css" href="/res/css/site/stylesheet0.css">
    <link rel="stylesheet" type="text/css" href="/res/css/site/stylesheet-landing3.css">
    <link rel="icon" type="image/png" href="/res/images/favicon/site/landing1/favicon.ico" />
    <?php }elseif( checkLandingUri('landing4') ){ ?>
    <link rel="stylesheet" type="text/css" href="/res/css/site/stylesheet0.css">
    <link rel="stylesheet" type="text/css" href="/res/css/site/stylesheet-landing4.css">
    <link rel="icon" type="image/png" href="/res/images/favicon/site/landing1/favicon.ico" />
    <?php }elseif( checkLandingUri('landing5') ){ ?>
    <link rel="stylesheet" type="text/css" href="/res/css/site/stylesheet0.css">
    <link rel="stylesheet" type="text/css" href="/res/css/site/stylesheet-landing5.css">
    <link rel="icon" type="image/png" href="/res/images/favicon/site/landing1/favicon.ico" />
    <?php }elseif( checkLandingUri('landing6') ){ ?>
    <link rel="stylesheet" type="text/css" href="/res/css/site/stylesheet0.css">
    <link rel="stylesheet" type="text/css" href="/res/css/site/stylesheet-landing6.css">
    <link rel="icon" type="image/png" href="/res/images/favicon/site/landing1/favicon.ico" />
    <?php }else{ ?>
    <link rel="icon" type="image/png" href="/res/images/favicon/site/favicon.ico" />
    <?php } ?>
    

    <?php if( checkIsProduction() ){ ?>

    <!-- Google Tag Manager -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-NZDZK7P');</script>
    <!-- End Google Tag Manager -->




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


    
    

    <header style="display:none!important;"></header>



