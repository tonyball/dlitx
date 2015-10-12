'use strict'

angular.module 'dlitApp'
.config ($routeProvider) ->
  $routeProvider.when '/classreport',
    templateUrl: 'app/classreport/classreport.html'
    controller: 'ClassreportCtrl'
