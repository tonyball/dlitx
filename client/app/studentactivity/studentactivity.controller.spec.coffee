'use strict'

describe 'Controller: StudentactivityCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'
  StudentactivityCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    StudentactivityCtrl = $controller 'StudentactivityCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
