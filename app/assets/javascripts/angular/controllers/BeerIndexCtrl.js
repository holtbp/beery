beery.controller('BeerIndexCtrl', ['$scope', '$http', 'nav', function($scope, $http, nav) {
  $scope.beers = [];
  $http.get('./beers.json').success(function(data) {
    $scope.beers = data;
  });
  $scope.nav = nav;
}]);
