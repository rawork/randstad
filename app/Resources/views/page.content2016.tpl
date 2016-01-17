<!DOCTYPE html>
<html>
<head lang="ru">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Randstad Award Russia - {$title}</title>
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/bootstrap3/css/bootstrap.css" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/slick/slick.css" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/slick/slick-theme.css" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/public2016/css/app.css" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/public2016/css/_slider.css" media="screen">
    <!--[if lt IE 9]>
    {*<script type="text/javascript" src="{$theme_ref}/ie/html5shiv.js"></script>*}
    <script type="text/javascript" src="{$theme_ref}/ie/respond.min.js"></script>
    <![endif]-->r
</head>
<body>
        <div class="container">
            <div class="header">
                <div class="logo pull-left"><a href="/award/"><img class="logo-lg" src="{$theme_ref}/public2016/img/logo.png"></a></div>
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
                                        {foreach item=child from=$menuitem.children}
                                            {if pos > 0}<li role="separator" class="divider"></li>{/if}
                                            <li><a href="{$child.ref}">{$child.title}</a></li>
                                        {/foreach}
                                    </ul>
                                </li>
                            {else}
                                <li><a href="{if $menuitem.url}{$menuitem.url}{else}/#{$menuitem.name}{/if}">{$menuitem.title}</a></li>
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
        <div class="container">
            <div class="content content-about">
                <h1>{$h1}</h1>
                {$maincontent}

            </div>
        </div>
        {include file="menu/mobilemenu.tpl"}
        <div class="golden-bg footer">
            <div class="container ">{raMethod path="Fuga:Public:Common:block" args="['name':'footer']"}</div>
        </div>
    <script src="{$theme_ref}/jquery/jquery.js"></script>
    <script src="{$theme_ref}/bootstrap3/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="{$theme_ref}/fotorama/fotorama.js"></script>
        <script type="text/javascript">
            var fotorama = $('.fotorama')
                // Initialize first:
                    .fotorama()
                // ...and return the API object:
                    .data('fotorama');
            $('.fotorama')
                    .on('fotorama:show', function (e, fotorama) {
                        var itemId = fotorama.index + 1;
                        $('a#download' + itemId).attr('href', fotorama.activeFrame.full);
                    });
        </script>

    <script src="{$theme_ref}/slick/slick.min.js"></script>
    <script src="{$theme_ref}/public2016/js/app.js"></script>
        <script src="{$theme_ref}/public/js/public.js"></script>
</body>
</html>