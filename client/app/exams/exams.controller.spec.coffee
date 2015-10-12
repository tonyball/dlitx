'use strict'

describe 'Controller: ExamsCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'
  ExamsCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ExamsCtrl = $controller 'ExamsCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
