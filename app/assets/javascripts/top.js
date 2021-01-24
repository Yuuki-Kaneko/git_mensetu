$(function() {
    $(window).scroll(function() {
        var value = $(this).scrollTop(); //スクロールの値を取得
        $('#scrollValue').text(value);
 
        $('#box1').css('background-position', '0 '+ value +'px');
 
        if (value > 800) {
            $('#box2').css('background-position', '0 '+ (value - 800) +'px');
        } else {
            $('#box2').css('background-position', '0  0');
        }
 
        if (value > 1600) {
            $('#box3').css('background-position', '0 '+ (value - 1600) +'px');
        } else {
            $('#box3').css('background-position', '0  0');
        }
 
        if (value > 2400) {
            $('#box4').css('background-position', '0 '+ (value - 2400) +'px');
        } else {
            $('#box4').css('background-position', '0  0');
        }
    });
});