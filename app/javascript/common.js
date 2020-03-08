
$(function() {
    $(".dropdown").hover(function() {
        $(this).children('.dropdown-menu').show();
        $(this).children('.border').css({opacity: 1});
    }, function() {
        $(this).children('.dropdown-menu').hide();
        $(this).children('.border').css({opacity: 0});
    });
    $(".dropdown-menu li").hover(function() {
        $(this).css({backgroundColor: "#f1f1f1"});
        $(this).children('a').css({color: "#333"});
    }, function() {
        $(this).css({backgroundColor: "#333"});
        $(this).children('a').css({color: "#f1f1f1"});
    });
    $('.hamburger').click(function() {
        $(this).toggleClass('active');
        if ($(this).hasClass('active')) {
            $('.drawer-nav').addClass('active');
        } else {
            $('.drawer-nav').removeClass('active');
        }
    });
});