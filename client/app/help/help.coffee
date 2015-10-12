'use strict'

angular.module 'dlitApp'
.config ($routeProvider) ->
  $routeProvider.when '/help',
    templateUrl: 'app/help/help.html'
    controller: 'HelpCtrl'
