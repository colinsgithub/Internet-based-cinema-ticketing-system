<div ng-app="loginWrap">
    <div  ng-controller="loginRequest">
        <div class="field-wrap">
            <input ng-model="loginRequest.email" type='email' placeholder='Email' name='user-email' class="login__input">
            <input ng-model="loginRequest.password" type='password' placeholder='Password' name='user-password' class="login__input">

            <input type='checkbox' id='#informed' class='login__check styled'>
            <label for='#informed' class='login__check-info'>remember me</label>
        </div>

        <div class="login__control">
            <button ng-click="sdLoginRequest()" class="btn btn-md btn--warning btn--wider">sign in</button>
            <a href="#" class="login__tracker form__tracker">Forgot password?</a>
        </div>
    </div>
</div>
<script src="js/angular.min.js"></script>

<script>

    angular.module('loginWrap', [])
            .controller('loginRequest', function($scope, $location, $http) {


        $scope.sdLoginRequest = function() {
            var req = {
                method: 'POST',
                url: '/Internet-based-cinema-ticketing-system/LoginControl?action=validate&email=' + $scope.loginRequest.email + "&password=" + $scope.loginRequest.password,
                headers: {
                    'Content-Type': undefined
                },
                data: {
                }
            };


            $http(req).
                    success(function(data, status, headers, config) {
                console(data);
                if (data == 'true') {
                    window.location.reload();
//                    window.setTimeout(function() {
//                        // Move to a new location or you can do something else
//                        window.location.href = "/Internet-based-cinema-ticketing-system/index.jsp";
//
//                    }, 4000);
                } else {
                    window.location.href = "/Internet-based-cinema-ticketing-system/loginError.html";
                }
                // this callback will be called asynchronously
                // when the response is available
            }).
                    error(function(data, status, headers, config) {
                // called asynchronously if an error occurs
                // or server returns response with an error status.
            });
        };
    });
</script>