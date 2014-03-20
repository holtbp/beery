beery.controller('BeerShowCtrl', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams) {
  $http.get("./beers/"+$routeParams.id+".json").success(function(data) {
    console.log(data);
    $scope.beer = data;
  });
}]);
