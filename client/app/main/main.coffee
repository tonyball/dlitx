'use strict'

angular.module 'dlitApp'
.config ($routeProvider) ->
  $routeProvider
  .when '/',
    templateUrl: 'app/dashboard/dashboard.html'
    controller: 'DashboardCtrl'
