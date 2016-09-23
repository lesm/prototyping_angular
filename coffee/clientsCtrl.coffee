angular
  .module 'clientsApp'
  .controller 'ClientsCtrl', ($scope, Clients) ->
    $scope.clients = []
    $scope.percentageOf = (percentage) ->
      percentage * 100

    Clients.all().success (data) ->
      $scope.clients = data

    $scope.create = ->
      Clients.create($scope.newClient).success (data) ->
        $scope.clients.push(data)
        $scope.newClient = null

    $scope.edit = (client) ->
      $scope.activeClient = client

    $scope.update = (client) ->
      Clients.update(client).success (data) ->
        $scope.activeClient = null

    $scope.delete = (client) ->
      Clients.delete(client.id).success (data) ->
        index = $scope.clients.indexOf(client)
        $scope.clients.splice(index,1)
