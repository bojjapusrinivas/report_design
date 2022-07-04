$('#spnTop').on("click", function () {
    var percentageToScroll = 120;
    var percentage = percentageToScroll / 100;
    var height = $(document).scrollTop();
    var scrollAmount = height * (1 - percentage);

    console.log('scrollAmount: ' + scrollAmount);
    $('html,body').animate({
        scrollTop: scrollAmount
    }, 'slow', function () {
        console.log("reached top");
    });

});
$('#spnbottom').on("click", function () {
    var percentageToScroll = 120;
    var percentage = percentageToScroll / 100;
    var height = $(document).height() - $(window).height();
    var scrollAmount = height * percentage;
    console.log('scrollAmount: ' + scrollAmount);
    jQuery("html, body").animate({
        scrollTop: scrollAmount
    }, 900);
});
