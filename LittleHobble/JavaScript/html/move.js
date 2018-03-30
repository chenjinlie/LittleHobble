
    $(window).ready(function () {
        var browser_h = $(window).height();
        var browser_w = $(window).width();
        $("#img").css("width", "100%");
        $("#img").css("height", browser_h * 0.6);
        $("#article").css("height", browser_h);
        $("#list").css("height", browser_h);
        $("#author").css("width", browser_w/4);
        //$("#author").css("margin", "0px", "margin", "auto");
    })
$(window).resize(function () {
    var browser_h = $(window).height();
    var browser_w = $(window).width();
    $("#img").css("height", browser_h * 0.6);
    $("#author").css("width", browser_w);
})
