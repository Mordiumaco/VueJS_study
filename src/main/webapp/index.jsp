<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue"></script>
<script>
	
	$(function(){
		
		var app = new Vue({
			el:'#firstVue',
			data:{
				message: '처음으로 해보는 Vue JS!',
				dodo: '여기가 변수명을 적는 곳이기도 하는 곳인거 같은데',
			}		
		})
		
		var app2 = new Vue({
			el:'#secondVue',
			data:{
				gloceryList: [{id:0, item:'bob'},{id:1, item:'bob2'},{id:2, item:'bob3'}]
			}		
		})
	})
	
</script>
<title>Insert title here</title>
</head>
<body>
	
	Hello World
	
	<div id="firstVue">
		{{ message }} <br/>
		{{ dodo }} <br/>
		  <span v-bind:title="message">
		 	   내 위에 잠시 마우스를 올리면 동적으로 바인딩 된 title을 볼 수 있습니다!
		  </span>
	</div>
	
	<div id="secondVue">
		<ul>
			<li v-for="item in gloceryList">
				{{item.id+1}} : {{item.item}}
			</li>
		</ul>
	</div>
</body>
</html>