beery.controller('BeerIndexCtrl', ['$scope', '$location', '$http', function($scope, $location, $http) {
  $scope.beers = [];
  $http.get('./beers.json').success(function(data) {
    $scope.beers = data;
  });

  $scope.viewBeer = function(id) {
    $location.url('/beers/'+id);
  };
}]);
