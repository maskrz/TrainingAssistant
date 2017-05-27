angular.module('home', ['homeService'])
	.controller('HomeCtrl', ['$scope', 'Home', function($scope, Home) {
		$scope.test = "simple text";
		$scope.welcomeText = "welcome default";

		$scope.loadRecords = function() {
			$scope.results = null;
			Home.welcomeText(function(welcomeText) {
				$scope.test = welcomeText;
			});
		}
	}]);