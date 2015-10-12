'use strict'

angular.module 'dlitApp'
.config ($routeProvider) ->
  $routeProvider.when '/studentprogress',
    templateUrl: 'app/studentprogress/studentprogress.html'
    controller: 'StudentprogressCtrl'
