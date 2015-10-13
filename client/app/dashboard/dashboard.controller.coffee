'use strict'

angular.module 'dlitApp'
.controller 'DashboardCtrl', ($scope, $rootScope) ->
  $scope.message = 'Hello'
  $rootScope.isTeacher = false
  $rootScope.isStudent = true