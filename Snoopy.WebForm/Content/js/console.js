/*
 * kudsu
 * 2019-12-6 00:16:40
 */
hitokoto();
function hitokoto() {
    $.ajax({
        type: "GET",
        url: "https://hitokoto.jijidown.com/v1/api/hitokoto?maxlength=80",
        data: {},
        dataType: "json",
        success: function (data) {
            //alert(data.hitokoto);
            console.log(data.hitokoto + "《" + data.source+"》");
        }
    });
}
if (console) {

    var outs = [], fi = function () { return { msg: "", style: "" } };

    var oi = fi();
    oi.msg = "才雨又晴晴又雨";
    oi.style = "padding:10px 40px 10px;line-height:50px;background:url('http://q21r61pqz.bkt.clouddn.com/see_no_evil_monkey.svg') no-repeat;background-size:15% 100%;font-size:1.8rem;color:rgba(184, 149, 88)";
    outs.push(oi);

    oi = fi();
    oi.msg = "https://www.netnr.com";
    oi.style = "background-image:-webkit-gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #25e),color-stop(0.75, #4f2), color-stop(0.9, #f2f), color-stop(1, #f22) );color:transparent;-webkit-background-clip: text;font-size:1.5em;"
    outs.push(oi);

    oi = fi();
    oi.msg = "\r\n源码：\nhttps://github.com/netnr/blog\r\n\r\nGitHub：\nhttps://github.com/netnr\r\n\r\n博客园：\nhttps://gitee.com/netnr\r\n";
    outs.push(oi);

    if (!("ActiveXObject" in window)) {
        outs.map(function (x) {
            console.log("%c" + x.msg, x.style);
        });
    }
}


