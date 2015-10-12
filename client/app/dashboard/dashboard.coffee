'use strict'

angular.module 'dlitApp'
.config ($routeProvider) ->
  $routeProvider.when '/dashboard',
    templateUrl: 'app/dashboard/dashboard.html'
    controller: 'DashboardCtrl'
