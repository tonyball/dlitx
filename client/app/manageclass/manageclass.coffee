'use strict'

angular.module 'dlitApp'
.config ($routeProvider) ->
  $routeProvider.when '/manageclass',
    templateUrl: 'app/manageclass/manageclass.html'
    controller: 'ManageclassCtrl'
