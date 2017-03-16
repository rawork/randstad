<ul class="info-partners clearfix">
    {foreach item=item from=$items}
    <li><a href="{$item.url}" target="_blank"><img alt="{$item.name}" title="{$item.name}" src="{$item.logo_value.value}"></a></li>
    {/foreach}
</ul>