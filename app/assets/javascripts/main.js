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
    }]).
  factory('nav', ['$location', function($location) {
    return {
      viewHome: function() {
        $location.url('/');
      },
      viewBeer: function(id) {
        $location.url('/beers/' + id);
      },
      viewBeers: function() {
        $location.url('/beers/');
      },
      viewNewBeer: function() {
        $location.url('/brewer');
      },
      viewBrewer: function(id) {
        $location.url('/brewers/' + id);
      },
      viewBrewers: function() {
        $location.url('/brewers');
      },
      viewNewBrewer: function() {
        $location.url('/brewer');
      },
      viewUsers: function() {
        $location.url('/users');
      }
    };
  }]);
