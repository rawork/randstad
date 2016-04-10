<p class="winner-extra">Специальный приз</p>
{foreach from=$items item=winner}
<div class="winner-main extra clearfix">
    <div class="goblet goblet-extra"><img src="{$theme_ref}/public2016/img/prize3.png"></div>
    <div class="winner">
        <div class="title"><span>{$winner.nomination}</span> {$winner.industry}&nbsp;— <strong>{$winner.name}</strong></div>
        <ul class="photo clearfix">
            <li class="certificate">
                <div class="goblet-xs goblet-xs-extra"><img src="{$theme_ref}/public2016/img/prize3.png"></div>
                <img class="ramka" src="{$winner.certificate_value.value}">
            </li>
            <li><img class="ramka" src="{$winner.photo_value.value}"></li>
        </ul>
    </div>
</div>
{/foreach}