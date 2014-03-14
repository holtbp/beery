'use strict';

// This line is related to our Angular app, not to our
// HomeCtrl specifically. This is basically how we tell
// Angular about the existence of our application.
window.beery = angular.module('beery', ['ngRoute']).
  config(['$routeProvider', function($routeProvider) {
    $routeProvider.
      when('/', {
        templateUrl: '/assets/templates/home.html',
        controller: 'HomeCtrl'
      }).
      when('/beers', {
        templateUrl: '/assets/templates/beers/index.html',
        controller: 'BeerIndexCtrl'
      }).
      when('/beers/:id', {
        templateUrl: '/assets/templates/beers/show.html',
        controller: 'BeerShowCtrl'
      });
    }]);
