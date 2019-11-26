"use strict";
// jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边)
document.write(' <script src="../../javascript/jquery1.12.4.min.js"></script> ');
// 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。
document.write('<script src="../../javascript/bootstrap.min.js"></script>');
document.write('<script src="../../javascript/layui.js"></script>');


//苹果禁止缩放屏幕
window.onload = function() {
    document.addEventListener('touchstart', function(event) {
        if (event.touches.length > 1) {
            event.preventDefault()
        }
    })
    document.addEventListener('gesturestart', function(event) {
        event.preventDefault()
    })
}

// 动态加载css文件
function loadCss(url) {
    var link = document.createElement("link");
    link.type = "text/css";
    link.rel = "stylesheet";
    link.href = url;
    document.getElementsByTagName("head")[0].appendChild(link);
}

var now = new Date();
var number = now.getYear().toString() + now.getMonth().toString() + now.getDate().toString() + now.getHours().toString() + now.getMinutes().toString() + now.getSeconds().toString();


// Bootstrap
loadCss("../../css/bootstrap.min.css");
// 全局css
loadCss("../../css/global1.0.css?v='+number+'");
