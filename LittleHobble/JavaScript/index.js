/// <reference path="../html/code/code_1.html" />
/// <reference path="../html/code/code_1.html" />

        $(function () {
            Rasize();
            
            $(window).resize(function () {
                Rasize();
                $("#block_overlay").css("width", $("#top_box").width());
                $("image").css("height", $("#top_box").height());
                $("#block_overlay").css("height", $("#top_box").height());
            });
            $(document).ready(function () {
                $(".font_overlay").ready(function () {
                    $(".font_overlay").fadeIn(2000).fadeOut(1500);
                    //jQuery滚轮监测事件
                    $(window).scroll(function () {
                        if ($(window).scrollTop() > 100) {
                            $("#Navigation").fadeIn(500);
                        }
                        else {
                            $("#Navigation").fadeOut(500);
                        }
                    })
                    //jquery获取鼠标位置
                    //$(document).mousemove(function (e) {
                    //    var a = e.pageY;
                    //    if (a < 54 + "px") {
                    //        $("#Navigation").fadeIn(500);
                    //    }
                    //    else {
                    //        $("#Navigation").fadeOut(500);
                    //    }
                    //})
                })
                



                //头部跳转鼠标移入移出事件
                //$("#logo").mouseover(function () {
                //    $("#Navigation").fadeIn(500);
                //})
                //$("#logo").mouseout(function () {
                //    $("#Navigation").fadeOut(500);
                //})


                $("document").load(function () {
                    $(".font_overlay1").fadeIn(4000).fadeOut(1000);
                })
                window.setTimeout("ss1()", 3500);
                window.setTimeout("ss2()", 6500);
                //window.setTimeout("ss3()", 9500);


                //跳转链接鼠标移入移出事件
                //$(".jump_link1").mouseover(function () {
                //    $(".mask1").css("display", "none");
                //})
                //$(".jump_link1").mouseout(function () {
                //    $(".mask1").css("display", "block");
                //})
                //$(".jump_link2").mouseover(function () {
                //    $(".mask2").css("display", "none");
                //})
                //$(".jump_link2").mouseout(function () {
                //    $(".mask2").css("display", "block");
                //})
                //$(".jump_link3").mouseover(function () {
                //    $(".mask3").css("display", "none");
                //})
                //$(".jump_link3").mouseout(function () {
                //    $(".mask3").css("display", "block");
                //})
                //$(".jump_link4").mouseover(function () {
                //    $(".mask4").css("display", "none");
                //})
                //$(".jump_link4").mouseover(function () {
                //    $(".mask4").css("display", "none");
                //})
                //$(".jump_link5").mouseover(function () {
                //    $(".mask5").css("display", "none");
                //})
                //$(".jump_link5").mouseout(function () {
                //    $(".mask5").css("display", "block");
                //})
                //$(".jump_link6").mouseover(function () {s
                //    $(".mask6").css("display", "none");
                //    //$("#Black_white").css("color", "black");
                //})
                //$(".jump_link6").mouseout(function () {
                //    $(".mask6").css("display", "block");
                //    //$("#Black_white").css("color", "white");
                //})



                $(".jump_link1").click(function () {
                    location.href = 'html/move/La La Land.html';
                })
                $(".jump_link2").click(function () {
                    location.href = 'html/move/Sing.html';
                })
                $(".jump_link3").click(function () {
                    location.href = 'html/move/Logan.html';
                })
                $(".jump_link4").click(function () {
                    location.href = 'html/move/Guardians of the Galaxy.html';
                })
                $(".jump_link5").click(function () {
                    location.href = 'html/code/code_3.html';
                })
                $(".jump_link6").click(function () {
                    location.href = 'html/code/code_1.html';
                })
            })
        });
//遮罩层以及背景video判定
function Rasize() {
    var $bodyheight = $(window).height();
    var $bodywidth = $(window).width();

    var $vedioHeight = ($("#video").height())+21;
    //网页加载video背景加载事件
    //$("#video1").css("height", $bodyheight);
    //$("#vieeo1").css("width", $bodywidth);
    var video_content_text = $(window).height()/2-599/2;

    if ($bodyheight < $vedioHeight || $bodyheight==$vedioHeight) {
        $("video").css({
            "display": "block"
        });
        $("#top_box img").css({
            "display": "none",
            "width": $(window).width() + "px",
            "height": $bodyheight + "px"
        });
        $(".font_overlay").css({
            "line-height": $bodyheight + "px"
        })
        $(".font_overlay1").css({
            "line-height": $bodyheight + "px"
        })
        $(".font_overlay2").css({
            "margin-top": video_content_text + "px"
        })
        //$(".font_overlay3").css({
        //    "line-height": $bodyheight + "px"
        //})
        $("#Small_rabbit").css({
            "height": $bodyheight + "px"
        })
    } else {
        $("video").css({
            "display": "bloak"
        });
        $("#top_box img").css({
            "display": "none"
        });
        $(".font_overlay").css({
            "line-height": $bodyheight + "px"
        })
        $(".font_overlay1").css({
            "line-height": $bodyheight + "px"
        })
        $(".font_overlay2").css({
            "margin-top": video_content_text + "px"
        })
        //$(".font_overlay3").css({
        //    "line-height": $bodyheight + "px"
        //})
        $("#Small_rabbit").css({
            "height": $bodyheight + "px"
        })
    }
    $("#block_overlay").css({
        "width": $(window).width() + "px",
        "height": $bodyheight + "px"
    });
    $("#top_box img").css({
        "width": $(window).width() + "px",
        "height":$bodyheight+"px"
    })
}
//浏览器大小变化启动，自适应屏幕
$(window).resize(function () {
    Rasize();
    $("#block_overlay").css("width", $("#top_box").width());
    $("image").css("height", $("#top_box").height());
    $("#block_overlay").css("height", $("#top_box").height());
});
function ss1() {
    $(".font_overlay1").fadeIn(2000).fadeOut(1000);
}
function ss2() {
    $(".font_overlay2").fadeIn(2000);
}
//function ss3() {
//    $(".font_overlay3").fadeIn(2000);
//}

