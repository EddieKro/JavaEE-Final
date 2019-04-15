<%--
  Created by IntelliJ IDEA.
  User: alexa
  Date: 4/15/2019
  Time: 7:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Estate analysis</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/advanced_questions.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/questions.css">
</head>
<body>
<div class="container">
    <div class="row"><br>
    </div>
    <div class="row"><br><br>
        <div class="col-sm-8 col-sm-offset-2">
            <div class="loader">
                <div class="col-xs-3 col-xs-offset-5">
                    <div id="loadbar" style="display: none;">
                        <img src="${pageContext.request.contextPath}/resources/img/loading5.gif" alt="Loading" class="center-block loanParamsLoader">
                    </div>
                </div>

                <div id="quiz">

                    <div class="question">
                        <h3><span class="label label-warning" id="qid">1</span>
                            <span id="question"> How large is your house in square feet?</span>
                        </h3>
                    </div>
                    <ul>
                        <li>
                            <label class="element-animation">
                                <input type="number" id='ans' class="inpnu" min="0" value="0"></label>
                        </li>
                        <li>
                            <label class="go element-animation">Next</label>
                            <div class="check"></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2">
            <div id="result-of-question" class="pulse animated" style="display: none;">
                <span id="totalCorrect" class="pull-right"></span>
                <table class="table table-hover table-responsive">
                    <thead>
                    <tr>
                        <th>No.</th>
                        <th>answer</th>
                        <th>Result</th>
                    </tr>
                    </thead>
                    <tbody id="analysisResult"></tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
