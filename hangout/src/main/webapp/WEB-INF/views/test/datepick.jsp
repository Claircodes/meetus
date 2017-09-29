<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript" src="/resources/assets/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="/resources/assets/js/bootstrap.min.js"></script>
<script src="/resources/assets/js/moment-with-locales.js"></script>
<script	src="/resources/assets/js/bootstrap-datetimepicker.js"></script>
<link href="/resources/assets/css/bootstrap-datetimepicker.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" media="screen" href="/resources/assets/css/bootstrap.min.css" />
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