'use strict'

angular.module 'dlitApp'
.config ($routeProvider) ->
  $routeProvider.when '/exams',
    templateUrl: 'app/exams/exams.html'
    controller: 'ExamsCtrl'
