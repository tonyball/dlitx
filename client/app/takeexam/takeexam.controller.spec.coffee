'use strict'

describe 'Controller: TakeexamCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'
  TakeexamCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    TakeexamCtrl = $controller 'TakeexamCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
