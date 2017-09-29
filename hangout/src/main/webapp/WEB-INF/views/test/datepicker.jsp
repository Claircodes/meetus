<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="/resources/assets/js/jquery.min.js"></script>
<script src="/path/to/moment.js"></script>
<script src="/path/to/bootstrap/js/transition.js"></script>
<script src="/path/to/bootstrap/js/collapse.js"></script>
<script src="/path/to/bootstrap/dist/bootstrap.min.js"></script>
<script src="/path/to/bootstrap-datetimepicker.min.js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<body>

<div style="overflow:hidden;">
    <div class="form-group">
        <div class="row">
            <div class="col-md-8">
                <div id="datetimepicker12"></div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $('#datetimepicker12').datetimepicker({
                inline: true,
                sideBySide: true
            });
        });
    </script>
</div>
</body>

</html>