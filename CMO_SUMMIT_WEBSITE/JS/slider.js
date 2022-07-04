$(document).ready(function () {
    var sliderTop = new Swiper('#slider-top', {
        paginationHide: true,
        nextButton: '#slider-top .swiper-button-next',
        prevButton: '#slider-top .swiper-button-prev',
        autoplay: 10000,
        grabCursor: true,
        onSlideChangeStart: function (sliderTop) {
            $('[data-caption-animate]').each(function () {
                var $toAnimateElement = $(this);
                var elementAnimation = $toAnimateElement.attr('data-caption-animate');
                $toAnimateElement.removeClass('animated').removeClass(elementAnimation).addClass('not-animated');
            });
        },
        onSlideChangeEnd: function (sliderTop) {
            $('[data-caption-animate]').each(function () {
                var $toAnimateElement = $(this);
                var toAnimateDelay = $(this).attr('data-caption-delay');
                var toAnimateDelayTime = 0;
                if (toAnimateDelay) {
                    toAnimateDelayTime = Number(toAnimateDelay) + 300;
                } else {
                    toAnimateDelayTime = 300;
                }
                if (!$toAnimateElement.hasClass('animated')) {
                    $toAnimateElement.addClass('not-animated');
                    var elementAnimation = $toAnimateElement.attr('data-caption-animate');
                    setTimeout(function () {
                        $toAnimateElement.removeClass('not-animated').addClass(elementAnimation + ' animated');
                    }, toAnimateDelayTime);
                }
            });
        }
    });

    var sliderSpeakers = new Swiper('#slider-speakers', {
        scrollbarHide: true,
        slidesPerView: 6,
        slidesPerGroup: 6,
        loopedSlides: 6,
        centeredSlides: false,
        spaceBetween: 5,
        grabCursor: true,
        autoplay: 5000,
//    autoplayDisableOnInteraction: false,
        nextButton: '#slider-speakers .swiper-button-next',
        prevButton: '#slider-speakers .swiper-button-prev'
    });
});// JavaScript Document