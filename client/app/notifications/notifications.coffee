'use strict'

angular.module 'dlitApp'
.config ($routeProvider) ->
  $routeProvider.when '/notifications',
    templateUrl: 'app/notifications/notifications.html'
    controller: 'NotificationsCtrl'
