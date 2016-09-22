angular
  .module 'clientsApp'
  .controller 'clientsCtrl', ($scope) ->
    $scope.clients = [
      { id: 1,  name: 'John',    age: 25,  percentage: 0.3 }
      { id: 2,  name: 'Jane',    age: 39,  percentage: 0.18 }
      { id: 3,  name: 'Jude',    age: 51,  percentage: 0.54 }
      { id: 4,  name: 'James',   age: 18,  percentage: 0.32 }
      { id: 5,  name: 'Javier',  age: 47,  percentage: 0.14 }
    ]
