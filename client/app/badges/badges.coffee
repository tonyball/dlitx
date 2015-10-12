'use strict'

angular.module 'dlitApp'
.config ($routeProvider) ->
  $routeProvider.when '/badges',
    templateUrl: 'app/badges/badges.html'
    controller: 'BadgesCtrl'
