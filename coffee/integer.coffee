INTEGER_REGEXP = /^\-?\d+$/
angular
  .module 'clientsApp'
  .directive 'integer', ->
    {
      require: 'ngModel',
      link: (scope, elm, attrs, ctrl) ->
        ctrl.$validators.integer = (modelValue, viewValue) ->
          return true if ctrl.$isEmpty(modelValue)
          return true if INTEGER_REGEXP.test(viewValue)
          return false
    }
