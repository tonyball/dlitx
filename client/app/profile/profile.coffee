'use strict'

angular.module 'dlitApp'
.config ($routeProvider) ->
  $routeProvider.when '/profile',
    templateUrl: 'app/profile/profile.html'
    controller: 'ProfileCtrl'
