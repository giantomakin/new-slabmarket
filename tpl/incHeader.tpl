<meta http-equiv="X-UA-Compatible" content="IE=7" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>{$MetaTitle}</title>
	<meta name="description" content="{$MetaDescription}">
	<meta name="keywords" content="{$MetaKeywords}">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="content-language" content="en">
	<!-- <link rel="stylesheet" href="https://bootswatch.com/readable/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
-->	<link rel="stylesheet" href="{$_upDir}css/bootstrap/css/bootstrap.bootswatch.css" TYPE="text/css">
	<link rel="stylesheet" href="{$_upDir}css/style.css" TYPE="text/css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<!-- <link REL="stylesheet" HREF="{$_upDir}css/main1.css" TYPE="text/css"> -->
	<link rel="stylesheet" href="{$_upDir}css/stones.css" TYPE="text/css">
	<link rel="stylesheet" href="{$_upDir}css/main.css" TYPE="text/css">
	<link rel="stylesheet" href="{$_upDir}css/stone_details.css" TYPE="text/css">
	<link rel="stylesheet" href="{$_upDir}css/autocomplete.css" TYPE="text/css">
	<link rel="stylesheet" href="{$_upDir}css/lightbox.css" type="text/css" media="screen" />
	<link rel="shortcut icon" href="/favicon.ico">

	<!-- Latest compiled and minified JavaScript -->
	<script src="http://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
	<script src="{$_upDir}/css/bootstrap/js/bootstrap.min.js"></script>
	<script language="JavaScript" src="{$_upDir}xml_js/prototype.js" type="text/javascript"></script>
	<script type="text/javascript" src="{$_upDir}core/js/php/php.js"></script>
	<script type="text/javascript" src="{$_upDir}xml_js/stoneRedirect.js"></script>
	<script type="text/javascript" src="{$_upDir}xml_js/load.js"></script>
	<script type="text/javascript" src="{$_upDir}xml_js/scriptaculous.js"></script>
	<script type="text/javascript" src="{$_upDir}xml_js/lightbox.js"></script>

</head>
<body>
	<div class="container-fluid">
		<div class="container"> <!-- MAIN CONTAINER -->

			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-4 main_logo_image">
						<!-- <a href="index.html"><img src="images/slab_market_logo.png" width="100%"></a> -->
						<h1><a class="navbar-brand page-scroll" href="#page-top">Slabmarket</a></h1>
					</div>
					<div class="col-sm-8">
						<nav>
							<div class="navbar" id="">
								<ul class="nav navbar-nav" id="naviTopList">
									<li><a href="{$_upDir}account" title="">My account</a></li>
									<li>
										<a href="{$_upDir}container" title="">
											{if $smarty.session.slabmarket.container.user == 1}
											Order
											{else}
											Container
											{/if}
										</a>
									</li>
									<li><a href="{$_upDir}tracking" title="" class="tl_left">Order tracking</a></li>
									{if $_userIsSigned==1}
									<li>
										<a href="#">You are signed in as <strong>{$_userLogin}</strong></a>
									</li>
									<li><a href="{$_upDir}logout">Sign Out</a></li>
									{else}
									<li><a href="{$_upDir}login" title="" class="tl_right">Sign In</a></li>

									{/if}
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>

			<div class="row"> <!-- START ROW -->
				<div class="col-sm-12">
					<nav class="navbar navbar-default">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav" id="naviMainList">
								<li {if $_link1==""} class="active" {else} class="n1_1"{/if}><a href="{$_upDir}">Slab Market<!-- <span class="sr-only">(current)</span> --></a></li>
								<li {if $_link1=="how-to-buy-slabs"} class="active" {else} class="n1_1"{/if}><a href="{$_upDir}how-to-buy-slabs
									">How To Buy</a></li>
									<li {if $_link1=="how-to-sell-slabs"} class="active" {else} class="n1_1"{/if}><a href="{$_upDir}how-to-sell-slabs">How To Sell</a></li>
									<li {if $_link1=="all-slabs"} class="active" {else} class="n1_1"{/if}><a href="{$_upDir}all-slabs">Slabs</a></li>
									<li {if $_link1=="suppliers"} class="active" {else} class="n1_1"{/if}><a href="{$_upDir}suppliers">Suppliers</a></li>
									<li {if $_link1=="help"} class="active" {else} class="n1_1"{/if}><a href="{$_upDir}help">Help</a></li>
									<li {if $_link1=="contact-us"} class="active" {else} class="n1_1"{/if}><a href="{$_upDir}contact-us">Contact Us</a></li>
								</ul>
							</div><!-- /.navbar-collapse -->
						</nav>
					</div>
				</div> <!-- END ROW -->

				<div class="row"> <!-- START ROW -->

