'use strict'

describe 'Controller: CourseCtrl', ->

  # load the controller's module
  beforeEach module 'dlitApp'
  CourseCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CourseCtrl = $controller 'CourseCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
