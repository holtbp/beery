beery.controller('BeerShowCtrl', ['$scope', '$http', '$routeParams', 'nav', 
  function($scope, $http, $routeParams, nav) {
    $http.get("./beers/"+$routeParams.id+".json").success(function(data) {
      console.log(data);
      $scope.beer = data;
    });
    $scope.nav = nav;
  }
]);
