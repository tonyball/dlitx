'use strict'

describe 'Controller: BadgesCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'
  BadgesCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    BadgesCtrl = $controller 'BadgesCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
