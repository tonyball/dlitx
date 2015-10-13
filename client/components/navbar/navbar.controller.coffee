'use strict'

angular.module 'dlitApp'
.controller 'NavbarCtrl', ($rootScope,$scope, $location, Auth) ->
  $rootScope.isStudent = true
