var app = angular.module('myModule', ['angular-loading-bar', 'LocalStorageModule']);
var serviceBase = 'http://5.77.54.44/NewTrademark/';
var serviceBase2 = 'http://5.77.54.44/newcld';


//var logoutlink = "http://www.iponigeria.com/#/logout"
var logoutlink = "http://www.iponigeria.com/#/logout"



app.controller('myController', ['$scope', '$http', 'localStorageService', '$rootScope', function ($scope, $http, localStorageService, $rootScope) {


    $(document).ready(function () {
       
        $scope.Email = $("input#Email").val();

        $scope.Password = $("input#Password").val();

        var SponsData = {

            "username": $scope.Email,
            "password": $scope.Password


        };

        var formData = new FormData();



        formData.append("vv", JSON.stringify(SponsData));

        $http.post(serviceBase + 'api/account/GetLoginToken2', SponsData, {
            headers: { 'Content-Type': 'application/json' }
        }).success(function (response) {


            if (response == null) {

                swal("", "Invalid Username / Password", "error")
                alert("Invalid Username / Password")
                window.location.assign(logoutlink);
                return;
            }

            var kp = response.Token;
            if (kp.error_description != undefined) {
                swal("", kp.error_description, "error")
                alert(kp.error_description)
                window.location.assign(logoutlink);
                return;

            }

            access_token = kp.access_token;
            localStorageService.set("access_token", kp.access_token);



            access_expire = kp.expires;
            localStorageService.set("access_tokenexpire", kp.expires);
            username = response.Email;

            localStorageService.set("username", response.Email);

            loginuser = response.Email;
            localStorageService.set("loginuser", response.Email);
            user = response;
            localStorageService.set("user", response);
            access2 = response.Access2;
            localStorageService.set("access2", response.Access2);

            ddata3 = response.Email;

            var dsap = response.Sys_ID;


            var dsap2 = response.xid;

            if (response.Sys_ID != null) {

                var data = {
                    property1: response.Sys_ID,
                    property2: response.xid
                };


                $http.get(serviceBase + 'api/account/getAgentRole2', { params: data }, { headers: { 'Content-Type': 'application/x-www-form-urlencoded' } }).success(function (response) {

                    //  alert("tony response ="+response);
                    //  localStorageService.set('authorizationData', { token: response.access_token, userName: loginData.userName });
                    agentRole = response;
                    localStorageService.set("agentRole", response);

                    var data2 = {
                        property1: dsap
                    };
                    return $http.get(serviceBase + 'api/account/getEmails', { params: data2 }, { headers: { 'Content-Type': 'application/x-www-form-urlencoded' } })
                        .success(function (response) {
                            //   return response;
                            Email = response;
                            localStorageService.set("Email", response);

                            //   NewCldPage(access_token, access_expire, username, loginuser, user, access2, agentRole, Email)
                          //  window.location.assign("http://5.77.54.44/NewcldBackup");
                            window.location.assign(serviceBase2);

                           
                        })
                        .error(function (response) {
                            // return response
                        });

                    //   deferred.resolve(response);

                }).error(function (err, status) {

                    // deferred.reject(err);
                });

            }




        }).error(function (err, status) {

            alert("error")
            //  _logOut();
            //  deferred.reject(err);
        });






    });



    //When you have entire dataset



}]);


app.controller('myController2', ['$scope', '$http', 'localStorageService', '$rootScope', function ($scope, $http, localStorageService, $rootScope) {


    $(document).ready(function () {

        $scope.Email = $("input#Email").val();

      
        var data = {
            property1: $scope.Email

        };
        

        $http.get(serviceBase + 'api/account/ResetPassword', { params: data }, { headers: { 'Content-Type': 'application/x-www-form-urlencoded' } }).success(function (response) {


            alert("Password Reset Successfull,kindly check your email ")
            window.location.assign(logoutlink);



        }).error(function (err, status) {

            alert("error Occured")
            window.location.assign(logoutlink);
            //  _logOut();
            //  deferred.reject(err);
        });






    });



    //When you have entire dataset



}]);















