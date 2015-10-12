'use strict'

describe 'Controller: NotificationsCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'
  NotificationsCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    NotificationsCtrl = $controller 'NotificationsCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
