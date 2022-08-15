/*=======================
 GIA REPORT PAGE JS
========================*/

//----- Number Count-----
$(document).ready(Function() {
    $('.count').each(function () {
        $(this).prop('Counter', 0).animate({
            Counter: $(this).text()
        }, {
            duration: 15000,
            easing: 'linear',
            step: function (now) {
                $(this).text(Math.ceil(now));
            }
        });
    });

});
