<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOC TYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http:www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
    <mata http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>首页</title>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" >
        function testJson(){
                //获取输入的值pname为id
                var pname = $("#pname").val();
                var password=$("#password").val();
                var page=$("#page").val();
                $.ajax({
                       //请求路径
                       url : "${PageContext.request.contextPath}/ch12b/testJson",
                       //请求类型
                       type : "post",
                       //data表示发送的数据
                       data : JSON.stringify({pname:pname,password:password,page:page}),
                       //定义发送请求的数据格式为Json字符串
                       contentType : "application/json;charset=utf-8",
                       //定义回调响应的数据格式为JSON字符串。该属性可以省略
                       dateType : "json",

                       //成功响应结果
                       success : function(data){
                            if(data!=null){
                            alert("输入的用户名:" + data.pname +
                                  ",密码:"        + data.password +
                                  ",年龄:"              + data.page);
                            }
                       }
                });
        }
    </script>

    </head>
    <body>
        <form action="">
        用户名:<input type="text" name="pname" id="pname"/><br>
        密码:<input type="password" name="password" id="password"/><br>
        年龄:<input type="text" name="page" id="page"/><br>
        <input type="button" value="测试" onclick="testJson()"/>
        </form>
    </body>

    </html>