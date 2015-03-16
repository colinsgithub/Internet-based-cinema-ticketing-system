<%-- 
    Document   : index
    Created on : Mar 16, 2015, 5:21:52 PM
    Author     : poonkaho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="login">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div ng-controller="loginController">
            <h1>{{hello}}</h1>
        </div>
    </body>
    <script src="js/angular.min.js" type="text/javascript"></script>  
    <script>
        var loginController = angular.module('login', []);

        loginController.controller('loginController', ['$scope', '$http',
            function($scope, $http) {
                $scope.hello = "POON KA HO";
            }]);
    </script>
</html>
