<p>Самые привлекательные работодатели в России-2015:</p>
{foreach from=$items item=winner}
<div class="winner-main clearfix">
    <div class="goblet"><img src="{$theme_ref}/public2016/img/goblet.png"></div>
    <div class="winner">
        <div class="title"><span>{$winner.nomination}:</span> {$winner.industry} — <strong>{$winner.name}</strong></div>
        <ul class="photo clearfix">
            <li class="certificate">
                <div class="goblet-xs"><img src="{$theme_ref}/public2016/img/goblet.png"></div>
                <img src="{$winner.certificate_value.value}">
            </li>
            <li><img src="{$winner.photo_value.value}"></li>
        </ul>
    </div>
</div>
{/foreach}