<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@include file="/common/head.jsp"%>
<html>
  <head>
       <script type="text/javascript" charset="utf-8" src="${path}/ueditor/ueditor.config.js"></script>
       <script type="text/javascript" charset="utf-8" src="${path}/ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
        <script type="text/javascript" charset="utf-8" src="${path}/ueditor/lang/zh-cn/zh-cn.js"></script>
     
  </head>
   <body >
        <textarea id="editor"  style="height: 400px;"  ></textarea>
     
       <script type="text/javascript">
           var row=parent.$('#notice').datagrid("getSelected"); 
            $.ajax({
				   url: "${path}/notice/selectOne.action",
				   type: "post",
				   data: {
					   noticeId:row.noticeId
				   },
				   success: function(msg){
					  // $('#notice').datagrid("clearChecked");
					   //$('#notice').datagrid("load");
					    //$("#editor").val("333");
					   //$("#editor11").val(msg.noticeContent);
					   //UE.getEditor('editor').execCommand( "getlocaldata" );
					   $("#editor").val( msg.noticeContent);
					   UE.getEditor('editor').execCommand( "getlocaldata" );
				   }
			});
      </script>
  </body>
</html>
