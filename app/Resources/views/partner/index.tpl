<ul class="info-partners clearfix">
    {foreach item=item from=$items}
    <li><img alt="{$item.name}" title="{$item.name}" src="{$item.logo_value.value}"></li>
    {/foreach}
</ul>