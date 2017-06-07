angular.module('pace', []).controller('PaceCtrl', [ '$scope', function($scope) {
	$scope.distance = 200;
	$scope.time = 27.5;
	$scope.velocityKMPH = 26.18;
	$scope.velocityMPS = 7.27;
	$scope.customDistance = 150;
	$scope.customTime = 20.63;
	$scope.time100 = 13.75;
	$scope.time150 = 20.63;
	$scope.time200 = 27.5;
	$scope.time300 = 41.25;
	$scope.time400 = 55;
	$scope.time500 = 68.75;
	
	$scope.calculate = function(distance, time) {
		calculateVelocity($scope, distance, time);
		calculateCustom($scope, distance, time);
		calculateDefault($scope, distance, time);
	}

	
} ]);

function isNumeric(n) {
  return !isNaN(parseFloat(n)) && isFinite(n);
}

function round(n) {
	return Math.round(n * 100) / 100
}

function calculateVelocity($scope, distance, time) {
	$scope.velocityMPS = round(distance/time);
	$scope.velocityKMPH = round(((3600/time) * distance)/1000);
}

function calculateCustom($scope, distance, time) {
	$scope.customTime = round(($scope.customDistance/distance)*time);
}

function calculateDefault($scope, distance, time) {
	var t100 = time * (100/distance);
	$scope.time100 = round(t100);
	$scope.time150 = round(1.5 * t100);
	$scope.time200 = round(2 * t100);
	$scope.time300 = round(3 * t100);
	$scope.time400 = round(4 * t100);
	$scope.time500 = round(5 * t100);
}