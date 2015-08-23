<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Profile"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    %{--<link rel="shortcut icon" href="${resource(dir: 'Assets\\theme1\\css', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="shortcut icon" href="${resource(dir: 'Assets\\theme1\\css', file: 'bootstrap-responsive.min.css')}" type="text/css">
    <link rel="shortcut icon" href="${resource(dir: 'Assets\\theme1\\css', file: 'ace.min.css')}" type="text/css">
    <link rel="shortcut icon" href="${resource(dir: 'Assets\\theme1\\css', file: 'ace-responsive.min.css')}" type="text/css">
    <link rel="shortcut icon" href="${resource(dir: 'Assets\\theme1\\css', file: 'ace-skins.min.css')}" type="text/css">--}%
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">

    %{--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>--}%
   <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.6.4.min.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.validate.js')}"></script>

    <g:layoutHead/>
    <r:layoutResources />
</head>
<body>

<div id="grailsLogo" role="banner" class="span12">
    <div id="image">
        <img width="150" height="110" src="${resource(dir: 'images', file: 'Head.jpg')}" alt="my pro "/></div>
    <div id="header" ><h1 style="color: #f89406">INFORMATION AND PROFILING SYSTEM</h1>
        <span><a href="${createLink( controller:'home',action: 'index')}"><input style="background-color: #444444" type="button" value="HOME"></a></span>
        <span> <a href="${createLink(controller:'login', action: 'index')}"><input style="background-color: #444444" type="button" value="LOGIN"></a></span>
        <span><a href="#"><input style="background-color: #444444"type="button" value="LOGOUT"></a></span>
    </div>
            </div>

<g:layoutBody/>
<div class="footer" role="contentinfo"> DHEERAJ:To be Extended</div>
<div id="spinner" class="spinner" style="display:none;"></div>
<g:javascript library="application"/>
<r:layoutResources />
</body>
</html>
