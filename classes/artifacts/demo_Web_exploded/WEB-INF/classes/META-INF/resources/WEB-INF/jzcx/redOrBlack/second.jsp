<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@include file="../../taglib/taglib.jsp" %>--%>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <title>建筑行业诚信查询</title>
    <link href="../../css/layui.css" rel="stylesheet">
    <link href="../../css/ccq1.0.css?v='+number+'" rel="stylesheet">
    <script src="../../javascript/globalForSecond.js"></script>
</head>
<body>
         
    <div class="whole">
        <div class="header">
            <a href="../../Jzcx/index" style="color:#5cc7f3">
            <span class="glyphicon glyphicon-menu-left"></span>
            </a>
            <div class="media">
                <div class="media-left">

                        <img class="media-object" src="../../image/error_outline_u50.png" alt="...">

                </div>
                <div class="media-body">

                        <h3 class="media-heading" style="font-weight: bold;">红黑名单查询（企业）</h3>

                </div>
            </div>

            <!-- 搜索 -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                    <span class="input-group-btn">
                        <button class="btn btn-default glyphicon glyphicon-search" type="button"></button>
                    </span>
                    <input type="text" id="input-spf" onblur ="getData()" value="${corpName}" class="form-control" placeholder="请输入企业名称">
                    </div><!-- /input-group -->
                </div><!-- /.col-lg-6 -->
            </div>

            <div class="roster">
                <div class="rosters black-roster">
                    <a href="../../Jzcx/redOrBlack/second?page=0&limit=2&redOrBlack=black">
                    <div class="black-roster-radius" style="top: 2px;position: relative;"></div>
                    <span style="    color: #5cc7f3;">黑名单</span>
                    </a>
                </div>
                <div class="rosters red-roster">
                    <a href="../../Jzcx/redOrBlack/second?page=0&limit=2&redOrBlack=red">
                    <div class="red-roster-radius" style="top: 2px;position: relative;"></div>
                    <span style="    color: #5cc7f3;">红名单</span>
                    </a>
                </div>
            </div>

        </div>

        <div class="content">
            <div>
                <ul class="list-group">
                    <c:forEach items="${dataList}" var="data" varStatus="index">
                        <div class="panel">
                            <div class="panel-collapse">
                                <div class="panel-body">
                                    <div class="content-top">
                                        <c:if test="${data.reason == null}">
                                            <div class="company-radius" style="background-color: #ff3300;top:3px;position: relative"></div>
                                        </c:if>
                                        <c:if test="${data.reason != null}">
                                            <div class="company-radius" style=";top:3px;position: relative"></div>
                                        </c:if>


                                        <span>${data.corpName}</span>
                                    </div>
                                    <ul class="panel-body-ul">
                                        <li>
                                            <span class="panel-body-ulli-left">企业类型：</span>
                                            <span class="panel-body-ulli-right qylx">${data.type}</span>
                                            <div class="ul-li-right">
                                                <span class="panel-body-ulli-left">诚信分</span>
                                                    ${data.mark}
                                            </div>
                                        </li>
                                        <li>
                                            <span class="panel-body-ulli-left">社会统一信用代码</span>
                                            <span class="panel-body-ulli-right shtyxy">${data.corpCode}</span>
                                        </li>

                                        <c:if test="${data.reason != null}">
                                            <li>
                                                <span class="panel-body-ulli-left" style="color: #fff">原因</span>
                                                <span class="panel-body-ulli-right" style="color: #fff">${data.reason}</span>
                                            </li>
                                            <li>
                                                <span class="panel-body-ulli-left">起始时间：</span>
                                                <span class="panel-body-ulli-right"> ${data.beginTime}&nbsp; 至 &nbsp;  ${data.endTime}</span>
                                            </li>
                                        </c:if>


                                    </ul>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </ul>
            </div>
        </div>

        <div class="footer" >
            <div class="footerbar">
                <div id="page_container"></div>
            </div>
        </div>

    </div>



    <script src="../../javascript/laypage.js"></script>

    <script>
        $(document).ready(function(){
            var laypage = layui.laypage;

            laypage.render({
                elem:'page_container',
                count:${count},
                limit: 2,
                groups: 3,
                curr:${page}+1,
                jump: function (obj, first) {
                    console.log(${page})
                    if (!first){
                        location.href='../../Jzcx/redOrBlack/second?page='+((obj.curr)-1)+'&limit=2&redOrBlack=${redOrBlack}&corpName='+$('#input-spf').val();
                    }

                    //分页
                    var layuilaypage1 = document.getElementsByClassName('layui-laypage')[0].childNodes;

                    if(obj.curr != 1){
                        if(obj.curr != 2){
                            if(obj.curr == 3){
                                if(layuilaypage1.length != 8){
                                }else{
                                    layuilaypage1[4].style.display = 'none';
                                }
                                console.log(11)
                            }else if(layuilaypage1[4].innerText == "4"){
                                if(layuilaypage1.length != 6){
                                    layuilaypage1[3].style.display = 'none';
                                    layuilaypage1[5].style.display = 'none';
                                }else{
                                }
                                console.log(22)
                            }else if(layuilaypage1.length==7  ){
                                console.log(33)
                            }else if(layuilaypage1.length==8 ){
                                layuilaypage1[3].style.display = 'none';
                                console.log(44)
                            } else{

                                layuilaypage1[3].style.display = 'none';
                                layuilaypage1[5].style.display = 'none';
                                console.log(55)
                            }
                        }
                    }


                }
            })
        })

        $('.list-group').css('display','block');
        $('.content-table').css('display','none');

        function getData(){
          
            // if(($('#input-spf').val()=='')){
            //     return;
            // }
            // else{
                window.open('../../Jzcx/redOrBlack/second?limit=2&redOrBlack=${redOrBlack}&corpName='+$('#input-spf').val(),'_self');
            // }
        }

        

    </script>
  
</body>
</html>