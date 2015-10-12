'use strict'

angular.module 'dlitApp'
.config ($routeProvider) ->
  $routeProvider.when '/classroom',
    templateUrl: 'app/classroom/classroom.html'
    controller: 'ClassroomCtrl'
