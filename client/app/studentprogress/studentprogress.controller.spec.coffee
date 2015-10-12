'use strict'

describe 'Controller: StudentprogressCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'
  StudentprogressCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    StudentprogressCtrl = $controller 'StudentprogressCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
