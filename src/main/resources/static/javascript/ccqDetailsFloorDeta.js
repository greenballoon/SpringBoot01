"use strict";
$(function () {
    $.ajax({
        //请求方式  
        type: "GET",
        //文件位置  
        url: "./src/data/5.json",
        //返回数据格式为json,也可以是其他格式如  
        dataType: "json",
        //请求成功后要执行的函数，拼接html  
        success: function (data) {
            var Data = data[1].data;
            console.log(Data);
            var str = "";
            $.each(Data, function (i, n) {
                str += "\n                <thead >\n                <tr>\n                    <th style=\"text-align:center;vertical-align:middle;\">\u623F\u5C4B\u5750\u843D</th>\n\n                    <th style=\"white-space: pre-wrap;\">" + n.FWZL + "</th>\n                </tr>\n            </thead>\n            <tbody>\n                <tr>\n                    <td>\u89C4\u5212\u7528\u9014</td>\n                    <td>" + n.GHYT + "</td>\n                </tr>\n                <tr>\n                    <td>\u5EFA\u7B51\u9762\u79EF</td>\n                    <td>" + n.JZMJ + "\u5E73\u65B9\u7C73</td>\n                </tr>\n                <tr>\n                    <td>\u5957\u5185\u9762\u79EF</td>\n                    <td>" + n.TNMJ + "\u5E73\u65B9\u7C73</td>\n                </tr>\n                <tr>\n                    <td>\u623F\u5C4B\u72B6\u6001</td>\n                    <td>" + n.ZT + "</td>\n                </tr>\n                <tr>\n                    <td>\u603B\u4EF7</td>\n                    <td>" + n.ZJ + "\u5143</td>\n                </tr>\n                <tr>\n                    <td>\u5355\u4EF7</td>\n                    <td>" + n.DJ + "\u5143</td>\n                </tr>\n            </tbody>\n                ";
            });
            $(".table-bordered").append(str);
        }
    });
});
