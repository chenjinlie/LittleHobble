
    $(window).ready(function () {
        var browser_h = $(window).height();
        var browser_w = $(window).width();
        $("#img").css("width", "100%");
        $("#img").css("height", browser_h * 0.2);
        //$(".content_img").css("height", browser_h * 0.3);
    })
$(window).resize(function () {
    var browser_h = $(window).height();
    var browser_w = $(window).width();
    $("#img").css("height", browser_h * 0.2);
    //$(".content_img").css("height", browser_h * 0.5);
})