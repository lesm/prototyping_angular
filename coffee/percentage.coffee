angular
  .module 'clientsApp'
  .filter 'percentage', ($filter)->
    (value) ->
      $filter('number')(value * 100, 0) + ' %'
