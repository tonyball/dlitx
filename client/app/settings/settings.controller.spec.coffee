'use strict'

describe 'Controller: SettingsCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'
  SettingsCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    SettingsCtrl = $controller 'SettingsCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
