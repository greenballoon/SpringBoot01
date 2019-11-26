"use strict";
$(function () {
    $.ajax({
        //请求方式  
        type: "GET",
        //文件位置  
        url: "./src/data/ccq.json",
        //返回数据格式为json,也可以是其他格式如  
        dataType: "json",
        //请求成功后要执行的函数，拼接html  
        success: function (data) {
            var Data = data[1].data;
            //    console.log(Data)
            var str = "";
            var region = "";
            var address = '';
            var searchUrl;
            $.each(Data, function (i, n) {
                region = Data[i].XMDZ.substring(0, 3);
                address = Data[i].XMDZ.slice(3);
                //  ccqDetails.html?XMMC=encodeURIComponent('${n.XMMC}')
                str += "\n                        <div class=\"panel\">\n                        <li class=\"list-group-item\" >\n                            <span class=\"badge glyphicon glyphicon-hand-right\"> </span>\n                            <span class=\"list-group-item-num\">" + (i + 1) + ".</span>\n                            <a href=\"#panel6\" data-toggle=\"collapse\" onclick=\"finger(this)\" data-target=\"#panel" + (i + 1) + "\">\n                                <span class=\"list-group-item-name\">" + n.XMMC + "</span>\n                            </a>\n                        </li>\n                        \n                        <div class=\"panel-collapse collapse\" id=\"panel" + (i + 1) + "\">\n                            <div class=\"panel-body\">\n                                <ul class=\"panel-body-ul\">\n                                    <li>\n                                        <span class=\"panel-body-ulli-left\">\u884C\u653F\u533A\u57DF</span>\n                                        <span class=\"panel-body-ulli-right\">" + region + "</span>\n                                    </li>\n                                    <li>\n                                        <span class=\"panel-body-ulli-left\">\u697C\u76D8\u5730\u5740</span>\n                                        <span class=\"panel-body-ulli-right\">" + address + "</span>\n                                    </li>\n                                    <li>\n                                        <span class=\"panel-body-ulli-left\">\u5F00\u53D1\u4F01\u4E1A</span>\n                                        <span class=\"panel-body-ulli-right\">" + n.KFQY + "</span>\n                                    </li>\n                                </ul>\n                                <a id=\"redirectUrl\" href=\"ccqDetails.html?id=" + n.PJCODE + "\">\n                                    <button class=\"btn btn-default\" type=\"button\" onclick = \"ssfdetails(this)\">\u70B9\u51FB\u67E5\u770B</button>\n                                </a>\n                            </div>\n                        </div>\n                    </div>\n                ";
            });
            $(".list-group").append(str);
        }
    });
});
function finger(data) {
    var a = $(data).eq(0);
    var aAttribute = a[0].getAttribute('aria-expanded');
    var aPreviousSbiling = a[0].parentNode.children[0];
    var $aPreviousSbiling = $(aPreviousSbiling);
    if (aAttribute != null) {
        if (aAttribute == "true") {
            $aPreviousSbiling.attr("class", "badge glyphicon glyphicon-hand-right");
        }
        if (aAttribute == "false") {
            $aPreviousSbiling.attr("class", "badge glyphicon glyphicon-hand-down");
        }
    }
    else {
        $aPreviousSbiling.attr("class", "badge glyphicon glyphicon-hand-down");
    }
}
function spfInformation(data) {
    $('.list-group').css('display', 'block');
    $('#page_container').css('opacity', '1');
}
if ($('#input-spf').val() != '') {
    $('.list-group').css('display', 'block');
}
else {
    $('#page_container').css('opacity', '0');
}
