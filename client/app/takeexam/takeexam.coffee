'use strict'

angular.module 'dlitApp'
.config ($routeProvider) ->
  $routeProvider.when '/takeexam',
    templateUrl: 'app/takeexam/takeexam.html'
    controller: 'TakeexamCtrl'
