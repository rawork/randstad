<!DOCTYPE html>
<html>
<head lang="ru">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{$title}</title>
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/bootstrap3/css/bootstrap.css" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/slick/slick.css" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/slick/slick-theme.css" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/public2016/css/app.css?2016011802" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/public2016/css/_slider.css?201601180" media="screen">
    <!--[if lt IE 9]>
    {*<script type="text/javascript" src="{$theme_ref}/ie/html5shiv.js"></script>*}
    <script type="text/javascript" src="{$theme_ref}/ie/respond.min.js"></script>
    <![endif]-->
</head>
<body>
        <div class="container">
            <div class="header">
                <div class="logo pull-left"><img class="logo-lg" src="{$theme_ref}/public2016/img/logo.png"></div>
                {include file="menu/headermenu.tpl"}
            </div>
        </div>
        <div class="golden-bg">
            <div class="container mainmenu">
                    <ul class="nav nav-pills">
                        {foreach item=menuitem from=$links}
                            {if count($menuitem.children)}
                                <li role="presentation" class="dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                        {$menuitem.title} <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        {foreach item=child from=$menuitem.children name=foo}
                                            {if $smarty.foreach.foo.index > 0}<li role="separator" class="divider"></li>{/if}
                                            <li><a href="{$child.ref}">{$child.title}</a></li>
                                        {/foreach}
                                    </ul>
                                </li>
                            {else}
                                <li><a href="{if $menuitem.url}{$menuitem.url}{else}#{$menuitem.name}{/if}">{$menuitem.title}</a></li>
                            {/if}
                        {/foreach}
                    </ul>
                </div>
            </div>
        <div class="container">
            <div class="award-announce">
                <img class="pull-left" src="{$theme_ref}/public2016/img/goldglobe.png">
                <div>{raMethod path="Fuga:Public:Common:block" args="['name':'tiser']"}</div>
            </div>
        </div>
        {raMethod path="Fuga:Public:Slide:index"}
        <div class="container">
            <div class="content content-about">
                {raMethod path="Fuga:Public:Common:page" args="['name':'about']"}
            </div>
        </div>
        <div class="gray-bg">
            <div class="container">
                 <div class="content content-research">
                     {raMethod path="Fuga:Public:Common:page" args="['name':'research']" }
                 </div>
            </div>
        </div>
        <div class="container">
            <div class="content content-report">
                <h2><a name="reports"></a>Отчеты и результаты</h2>
                {raMethod path="Fuga:Public:Report:index"}
                {raMethod path="Fuga:Public:Common:page" args="['name':'reports']"}
            </div>
        </div>
        <div class="gray-bg">
            <div class="container">
                <div class="content content-news">
                    {raMethod path="Fuga:Public:News:feed"}
                </div>
            </div>
        </div>
        <div class="container">
            <div class="content content-winner">
                <h2><a name="winners"></a>Победители</h2>
                {raMethod path="Fuga:Public:Winner:main"}
                {raMethod path="Fuga:Public:Winner:other"}
            </div>
        </div>
        <div class="gray-bg">
            <div class="container">
                <div class="content content-media">
                    {raMethod path="Fuga:Public:Common:page" args="['name':'media']"}
                </div>
            </div>
        </div>
        <div class="golden-bg footer">
            <div class="container ">{raMethod path="Fuga:Public:Common:block" args="['name':'footer']"}</div>
        </div>
        {include file="menu/mobilemenu.tpl"}
        {*<a href="#" class="top" title="Перейти в начало страницы"><span class="glyphicon glyphicon-arrow-up"></span></a>*}
    <script src="{$theme_ref}/jquery/jquery.js"></script>
    <script src="{$theme_ref}/bootstrap3/js/bootstrap.min.js"></script>
        <script src="{$theme_ref}/scrollto/jquery.scrollTo.js"></script>
    <script src="{$theme_ref}/slick/slick.min.js"></script>
    <script src="{$theme_ref}/public2016/js/app.js?2016011801"></script>
</body>
</html>