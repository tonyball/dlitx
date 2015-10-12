'use strict'

angular.module 'dlitApp'
.config ($routeProvider) ->
  $routeProvider.when '/course',
    templateUrl: 'app/course/course.html'
    controller: 'CourseCtrl'
