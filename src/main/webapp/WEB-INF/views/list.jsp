<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<button id ="findAll" type="button" on>전체보기</button>
<button id="findCook" type="button" on>주방용품</button>
<button id="findFood" type="button" on>음식</button>
<button id="findPrice" type="button" on>가격순</button>
<button id="findOrderCount" type="button" on>주문순</button>

<table>
<thead>
<tr id="title">
<th>Id</th>
<th>Name</th>
<th>Price</th>
<th>OrderCount</th>
<th>Type</th>
</tr>
</thead>

<tbody id="body">

<tr class="items">
<td>1</td>
<td>칫솔</td>
<td>1000</td>
<td>100</td>
<td>주방용품</td>
</tr>

<tr class="items">
<td>2</td>
<td>라면</td>
<td>500</td>
<td>500</td>
<td>음식</td>
</tr>



</tbody>
</table>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>

var num = -1;

$('#findAll').on('click',function(){
	
	num = 1;
	
	$('.items').remove();
		
	$.ajax({
		type:'GET',	
		url:'list/api/findall',
		dataType:'json'		
	}).done(function(result){
		for(let i=0; i<result.length; i++){
		let tr = "<tr class='items'><td>"+result[i].id+"</td><td>"+result[i].name+"</td><td>"+result[i].price+"</td><td>"+result[i].orderCount+"</td><td>"+result[i].type+"</td></tr>";
		$('#body').after(tr);				  
		}
	})
		
})

$('#findCook').on('click',function(){
	
	num = 2;
	
	$('.items').remove();
		
	$.ajax({
		type:'GET',	
		url:'list/api/findcook',
		dataType:'json'		
	}).done(function(result){
		for(let i=0; i<result.length; i++){
		let tr = "<tr class='items'><td>"+result[i].id+"</td><td>"+result[i].name+"</td><td>"+result[i].price+"</td><td>"+result[i].orderCount+"</td><td>"+result[i].type+"</td></tr>";
		$('#body').after(tr);				  
		}
	})
		
})

$('#findFood').on('click',function(){
	
	num = 3;
		
	$('.items').remove();
		
	$.ajax({
		type:'GET',	
		url:'list/api/findfood',
		dataType:'json'		
	}).done(function(result){
		for(let i=0; i<result.length; i++){
		let tr = "<tr class='items'><td>"+result[i].id+"</td><td>"+result[i].name+"</td><td>"+result[i].price+"</td><td>"+result[i].orderCount+"</td><td>"+result[i].type+"</td></tr>";
		$('#body').after(tr);				  
		}
	})
		
})


$('#findPrice').on('click',function(){
	
	if(num == -1){
		alert("상품( 전체보기, 주방용품, 음식) 중 하나를 선택하세요!")
	}else if(num == 1){
		$('.items').remove();


		$.ajax({
			type:'GET',	
			url:'list/api/findallprice',
			dataType:'json'		
		}).done(function(result){
			for(let i=0; i<result.length; i++){
			let tr = "<tr class='items'><td>"+result[i].id+"</td><td>"+result[i].name+"</td><td>"+result[i].price+"</td><td>"+result[i].orderCount+"</td><td>"+result[i].type+"</td></tr>";
			$('#body').after(tr);				  
			}
		})


    }else if(num == 2){
    	$('.items').remove();

    	$.ajax({
			type:'GET',	
			url:'list/api/findcookprice',
			dataType:'json'		
		}).done(function(result){
			for(let i=0; i<result.length; i++){
			let tr = "<tr class='items'><td>"+result[i].id+"</td><td>"+result[i].name+"</td><td>"+result[i].price+"</td><td>"+result[i].orderCount+"</td><td>"+result[i].type+"</td></tr>";
			$('#body').after(tr);				  
			}
		})

    }else if(num == 3){
    	$('.items').remove();

    	$.ajax({
			type:'GET',	
			url:'list/api/findfoodprice',
			dataType:'json'		
		}).done(function(result){
			for(let i=0; i<result.length; i++){
			let tr = "<tr class='items'><td>"+result[i].id+"</td><td>"+result[i].name+"</td><td>"+result[i].price+"</td><td>"+result[i].orderCount+"</td><td>"+result[i].type+"</td></tr>";
			$('#body').after(tr);				  
			}
		})
    }
	
	
		

		
})




$('#findOrderCount').on('click',function(){
	
	
	
	if(num == -1){
		alert("상품( 전체보기, 주방용품, 음식) 중 하나를 선택하세요!")
	}else if(num == 1){
		$('.items').remove();


		$.ajax({
			type:'GET',	
			url:'list/api/findallordercount',
			dataType:'json'		
		}).done(function(result){
			for(let i=0; i<result.length; i++){
			let tr = "<tr class='items'><td>"+result[i].id+"</td><td>"+result[i].name+"</td><td>"+result[i].price+"</td><td>"+result[i].orderCount+"</td><td>"+result[i].type+"</td></tr>";
			$('#body').after(tr);				  
			}
		})


    }else if(num == 2){
    	$('.items').remove();

    	$.ajax({
			type:'GET',	
			url:'list/api/findcookordercount',
			dataType:'json'		
		}).done(function(result){
			for(let i=0; i<result.length; i++){
			let tr = "<tr class='items'><td>"+result[i].id+"</td><td>"+result[i].name+"</td><td>"+result[i].price+"</td><td>"+result[i].orderCount+"</td><td>"+result[i].type+"</td></tr>";
			$('#body').after(tr);				  
			}
		})

    }else if(num == 3){
    	$('.items').remove();

    	$.ajax({
			type:'GET',	
			url:'list/api/findfoodordercount',
			dataType:'json'		
		}).done(function(result){
			for(let i=0; i<result.length; i++){
			let tr = "<tr class='items'><td>"+result[i].id+"</td><td>"+result[i].name+"</td><td>"+result[i].price+"</td><td>"+result[i].orderCount+"</td><td>"+result[i].type+"</td></tr>";
			$('#body').after(tr);			  
			}
		})
    }
		
})


</script>



</body>
</html>