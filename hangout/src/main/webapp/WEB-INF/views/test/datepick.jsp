<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src="/resources/assets/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="/resources/assets/bootstrap/css/prettify-1.0.css" rel="stylesheet">
<link href="/resources/assets/bootstrap/css/base.css" rel="stylesheet">
<link href="/resources/assets/bootstrap/css/bootstrap-datetimepicker.css" rel="stylesheet">


<script type="text/javascript" src="/resources/assets/bootstrap/js/jquery-2.1.1.min.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="/resources/assets/bootstrap/css/bootstrap.min.css" />

<script src="/resources/assets/bootstrap/js/moment-with-locales.js"></script>

<script	src="/resources/assets/bootstrap/js/bootstrap-datetimepicker.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<body>

<div class="container">
    <div class="col-sm-6" style="height:130px;">
        <div class="form-group">
            <div class='input-group date' id='datetimepicker10'>
                <input type='text' class="form-control" />
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar">
                    </span>
                </span>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $('#datetimepicker10').datetimepicker({
                viewMode: 'years',
                format: 'YYYY/MM/DD'
            });
        });
    </script>
</div>
</body>

</html>