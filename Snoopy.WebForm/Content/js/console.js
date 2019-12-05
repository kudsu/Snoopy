/*
 * netnr
 * 2019-09-29
 */

if (console) {

    var outs = [], fi = function () { return { msg: "", style: "" } };

    var oi = fi();
    oi.msg = "才雨又晴晴又雨";
    oi.style = "padding:10px 40px 10px;line-height:50px;background:url('https://www.netnr.com/favicon.svg') no-repeat;background-size:15% 100%;font-size:1.8rem;color:#009a61";
    outs.push(oi);

    oi = fi();
    oi.msg = "https://www.netnr.com";
    oi.style = "background-image:-webkit-gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #25e),color-stop(0.75, #4f2), color-stop(0.9, #f2f), color-stop(1, #f22) );color:transparent;-webkit-background-clip: text;font-size:1.5em;"
    outs.push(oi);

    oi = fi();
    oi.msg = "\r\n婧愮爜锛歕r\nhttps://github.com/netnr/blog\r\n\r\nGitHub锛歕r\nhttps://github.com/netnr\r\n\r\n鐮佷簯锛歕r\nhttps://gitee.com/netnr\r\n\r\nQ缇わ細83084426";
    outs.push(oi);

    if (!("ActiveXObject" in window)) {
        outs.map(function (x) {
            console.log("%c" + x.msg, x.style);
        });
    }
}