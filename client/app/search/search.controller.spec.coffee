'use strict'

describe 'Controller: SearchCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'
  SearchCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    SearchCtrl = $controller 'SearchCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
