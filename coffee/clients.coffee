angular
  .module 'clientsApp'
  .factory 'Clients', ($http, $log) ->
    BASE_URL = 'http://localhost:3005/clients'
    {
      all: ->
        $http.get(BASE_URL)
      create: (client) ->
        $http.post(BASE_URL, client)
      update: (client) ->
        $http.put(BASE_URL + '/' + client.id, client)
      delete: (id) ->
        $http.delete(BASE_URL + '/' + id)
    }
