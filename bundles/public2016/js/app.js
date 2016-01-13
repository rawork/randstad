(function($) {
    $(function() {

        $(document).on('click', '.news a', function(e){
            e.preventDefault();

            console.log('news click');
            var textBlock = $(this).next();

            if (textBlock.is(':hidden')) {
                $('.news .text').slideUp(500);
                textBlock.slideDown(500);
            }

        });

        $(document).on('click', '.news .text span a', function(e) {
            $(this).parents('.text').slideUp(500);
        });

        $('.btn-archive').bind('click', function(e) {
            e.preventDefault();

            $(this).hide();
            $('.news .archive').show();
        })

        $('.winner-other').slick({
            infinite: false,
            dots : false,
            lazyLoad: 'progressive',
            slidesToShow: 4,
            slidesToScroll: 4,
            adaptiveHeight: true,
            prevArrow: '<button type="button" class="slick-prev winner-prev"></button>',
            nextArrow: '<button type="button" class="slick-next winner-next"></button>',
            responsive: [
                {
                    breakpoint: 992,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }
                // You can unslick at a given breakpoint now by adding:
                // settings: "unslick"
                // instead of a settings object
            ]
        });

        $('.slider').slick({
            infinite: false,
            dots : true,
            arrows: false,
            autoplay: true,
            autoplaySpeed: 5000,
            lazyLoad: 'progressive',
            slidesToShow: 1,
            slidesToScroll: 1,
            adaptiveHeight: true
        });

        $(document).on('click', '.menu-icon', function(e){
            e.preventDefault();

            if ($('#mobile-menu').css('right') == '-260px') {
                $('body').css('position', 'relative')
                    .animate({
                        left: '-260px'
                    }, 200);

                $('#mobile-menu').animate({
                    right: '0px'
                }, 200)
            } else {
                $('body')
                    .animate({
                        left: 'auto'
                    }, 200)
                    .css('position', 'static');

                $('#mobile-menu').animate({
                    right: '-260px'
                }, 200)
            }
        });

        var buildListColumns = function(containerName, strategy){
            var num_cols = 1,
                container = $(containerName),
                listItem = 'li',
                listClass = 'sub-list';
            var width = $(window).width();
            if (width >= 320 && width < 600) {
                num_cols = strategy[0];
            }
            if (width >= 600 && width < 992) {
                num_cols = strategy[1];
            }
            if (width >= 992) {
                num_cols = strategy[2];
            }

            //if (num_cols == 1) {
            //    return;
            //}
            container.each(function() {
                var items_per_col = new Array(),
                    items = $(this).find(listItem),
                    min_items_per_col = Math.ceil(items.length / num_cols),
                    difference = items.length - (min_items_per_col * num_cols);
                for (var i = 0; i < num_cols; i++) {
                    if (i < difference) {
                        items_per_col[i] = min_items_per_col + 1;
                    } else {
                        items_per_col[i] = min_items_per_col;
                    }
                }
                for (var i = 0; i < num_cols; i++) {
                    $(this).append($('<ul ></ul>').addClass(listClass));
                    for (var j = 0; j < items_per_col[i]; j++) {
                        var pointer = 0;
                        for (var k = 0; k < i; k++) {
                            pointer += items_per_col[k];
                        }
                        $(this).find('.' + listClass).last().append(items[j + pointer]);
                    }
                }
            });

            $('ul.sub-list:empty').remove();
        };

        $(window).resize(function(){
            buildLists()
        });

        var buildLists = function (){
            buildListColumns('.countries ul.list', [2,3,3]);
        };

        buildLists();
    });

})(jQuery);

