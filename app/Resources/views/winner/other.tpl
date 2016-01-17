<p>Самые привлекательные работодатели в своих отраслях:</p>
<div class="winner-other">
    {foreach from=$items item=winner}
    <div class="winner">
        <div class="title">{$winner.industry}&nbsp;&ndash; <strong>{$winner.name}</strong></div>
        <img src="{$winner.photo_value.value}">
        <div>
            <img class="prize" src="{$theme_ref}/public2016/img/prize.png">
            <img class="certificate" src="{$winner.certificate_value.value}">
        </div>
    </div>
    {/foreach}
</div>