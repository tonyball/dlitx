'use strict'

describe 'Controller: ClassroomCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'
  ClassroomCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ClassroomCtrl = $controller 'ClassroomCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
