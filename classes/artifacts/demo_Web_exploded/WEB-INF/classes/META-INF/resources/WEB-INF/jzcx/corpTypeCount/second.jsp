<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../taglib/taglib.jsp" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>各类型企业统计</title>
    <link href="../../css/ccqDetails1.0.css?v='+number+'" rel="stylesheet">
    <script src="../../javascript/globalForSecond.js"></script>
    <style>
        .text-color{
            color:#fff;
        }
    </style>
</head>
<body>
        <div class="whole">
            <div class="header">
                <a href="../../Jzcx/index" style="color:#5cc7f3">
                    <span class="glyphicon glyphicon-menu-left"></span>
                </a>
                <div class="header-left" >

                    <img src="../../image/u33.png"  />

                    <h3>各类型企业占比</h3>

                </div>
            </div>

            <div class="content" >
                    <div id="main" style="width: 352px;height:480px;top:35%;"></div>
                    <div class="table-responsive" >
                            <table class="table table-bordered">
                            <thead>
                              <tr>
                                <th class="text-color">类型名称</th>
                                <th class="text-color">企业数量</th>
                              </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${dataTable}" var="dataTmp" varStatus="index">
                                <tr>
                                    <td class="text-color">${dataTmp.name}</td>
                                    <td class="text-color">${dataTmp.value}</td>
                                    <%--<td>${data.value} </td>--%>
                                </tr>
                            </c:forEach>
                              <%--<tr>--%>
                                <%--<td> </td>--%>
                                <%--<td><br /> </td>--%>
                              <%--</tr>--%>
                              <%--<tr>--%>
                                <%--<td> </td>--%>
                             <%----%>
                                <%--<td> <br /></td>--%>
                              <%--</tr>--%>
                            </tbody>
                          </table>
                         </div>
            </div>


        </div>




    <script src="../../javascript/echarts.min.js"></script>
    <script src="../../javascript/ccqDetails.js?v='+number+'"></script>
<script type="text/javascript">

    var myChart = echarts.init(document.getElementById('main'));
    var data='${data}'
    console.info(data)
    var option = {
        color:['#FFFEA0','#8F1D78','#D0E9FF','#37C6C0','#1DBDB8','#FF5983','#EBEDF4','#AAB8A3','#7E88F4','#5E8579','#E57B85','#B3D1C1','#DBD9B7',],
        title: {
            text: ' ',
            subtext: ' ',
            left: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{b} : {c} ({d}%)"
        },
        legend: {
            // orient: 'vertical',
            // top: 'middle',
            top: 10,
            left: 'center',
            right:'center',


            data: [
                '设计施工一体化企业',
                '预拌商品混凝土企业',


                '工程造价咨询企业',
                '预拌砂浆生产企业',
                '建筑工程检测机构',
                '深基坑第三方监测企业',
                '施工图审查机构',
                '招标代理机构',
                '园林绿化企业',
                '勘察类企业',
                '监理类企业',
                '建筑业企业',
                '设计类企业'


               ]
        },
        legend:{
            textStyle: {
                color: '#fft'
            }
        },
        series: [
            {
                type: 'pie',
                radius: '45%',
                labelLine:{
                    normal:{
                        length:5
                    }
                },
                center: ['46%', '68%'],
                selectedMode: 'single',
                data: ${data},
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };
    myChart.setOption(option);

</script>
   
    

</body>
</html>