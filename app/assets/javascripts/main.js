'use strict';

// This line is related to our Angular app, not to our
// HomeCtrl specifically. This is basically how we tell
// Angular about the existence of our application.
var beery = angular.module('beery', ['dotjem.routing']).
  config(['$stateProvider', function($stateProvider) {
    $stateProvider.
      state('home', {
        route: '/',
        views: {
          main: {
            controller: 'HomeCtrl',
            template: 'assets/templates/home.html'
          }
        }
      }).
      state('beers', {
        route: '/beers',
        views: {
          main: {
            controller: 'BeerIndexCtrl',
            template: 'assets/templates/beers/index.html'
          }
        }
      }).
      state('beers.show', {
        route: '/beers/:id',
        views: {
          main: {
            controller: 'BeerShowCtrl',
            template: 'assets/templates/beers/show.html'
          }
        }
      })
  }]);
