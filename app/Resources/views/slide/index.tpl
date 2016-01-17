<div class="gray-bg">
    <div class="container">
        <div class="slider">
            {foreach from=$items item=slide name=slide}
                <div class="slide">
                    <div class="slide-content" id="slide{$smarty.foreach.slide.index+1}">
                        <div class="info">
                            <h3>{$slide.name}</h3>
                            <p>{$slide.content}</p>
                        </div>
                        <a class="btn-more" href="{$slide.link}">Узнать больше</a>
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
</div>