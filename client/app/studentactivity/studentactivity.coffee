'use strict'

angular.module 'dlitApp'
.config ($routeProvider) ->
  $routeProvider.when '/studentactivity',
    templateUrl: 'app/studentactivity/studentactivity.html'
    controller: 'StudentactivityCtrl'
