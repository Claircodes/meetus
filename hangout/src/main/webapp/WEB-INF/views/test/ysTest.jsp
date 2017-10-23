<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
function hide_numbers(s){
	  var result = s;
	  if(result.length == 11)
	  {
	    for(var i = 0, max = (result.length-4); i < max; i++)
	    {
	      result = "*";
	    }
	  }
	  else
	  {
	    for(var i = 0, max = (result.length-4); i < max; i++)
	    {
	      result[i] = "*";
	    }
	  }
	  //함수를 완성해주세요
	  
	  return result;
	}

	// 아래는 테스트로 출력해 보기 위한 코드입니다.
	console.log("결과 : " + hide_numbers('01033334444'));
</script>
</body>
</html>