angular
  .module 'clientsApp'
  .directive 'clientRow', ->
    {
      restrict: 'A'
      templateUrl: 'client.html'
      link: (scope, element, attrs) ->
        scope.isEditing = false

        scope.editClient = ->
          scope.original  = angular.copy(scope.client)
          scope.isEditing = true

        scope.updateClient = ->
          scope.update(scope.client)
          scope.isEditing = false

        scope.deleteClient = ->
          scope.dedele(scope.client)

        scope.cancelEdit = ->
          scope.isEditing = false
          angular.copy(scope.original, scope.client)
    }
