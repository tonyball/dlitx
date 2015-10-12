'use strict'

angular.module 'dlitApp'
.config ($routeProvider) ->
  $routeProvider.when '/search',
    templateUrl: 'app/search/search.html'
    controller: 'SearchCtrl'
