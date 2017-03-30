<p class="winner-extra">Специальный приз</p>
{*Зал славы Randstad Award*}
{foreach from=$items item=winner}
<div class="winner-main extra clearfix">
    <div class="winner winner-hall">
        <div class="title"><span>{$winner.nomination}</span> <strong>{$winner.name}</strong></div>
        <ul class="photo clearfix">
            <li class="certificate">
                <img class="ramka" src="{$winner.certificate_value.value}">
            </li>
            <li><img class="ramka" src="{$winner.photo_value.value}"></li>
        </ul>
    </div>
</div>
{/foreach}