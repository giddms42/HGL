<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
</script>
<style>
#paging {width:580px; text-align:center; float:left; line-height:15px}
#paging a.prev{font:8pt verdana; color:#555555}
#paging .selected {font-weight:bold; color:#555555}
#paging a.num{border:#AAAAAA 1px solid; background-color:#FFFFFF; color:#555555; padding:3px 6px; margin:3px; font:8pt verdana}
#paging a:hover.num{border:#555555 1px solid}
</style>
</head>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
	function alert(){
		swal({
			title: "Are you sure?",
			  text: "Once deleted, you will not be able to recover this imaginary file!",
			  icon: "warning",
		})
	}
</script>


<body>
<div id="paging">
	<br/>
<a [##_prev_page_##] class="prev" title="이전페이지">◀ PREV </a>
<s_paging_rep><a [##_paging_rep_link_##] class="num">[##_paging_rep_link_num_##]</a></s_paging_rep>
<a [##_next_page_##] class="prev" title="다음페이지">NEXT ▶</a>
	<br/>&nbsp;
</div>

<button onclick="alert();">나를누르욥요</button>


</body>
</html>