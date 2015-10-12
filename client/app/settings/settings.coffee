'use strict'

angular.module 'dlitApp'
.config ($routeProvider) ->
  $routeProvider.when '/settings',
    templateUrl: 'app/settings/settings.html'
    controller: 'SettingsCtrl'
