'use strict'

describe 'Controller: ClassreportCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'
  ClassreportCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ClassreportCtrl = $controller 'ClassreportCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
