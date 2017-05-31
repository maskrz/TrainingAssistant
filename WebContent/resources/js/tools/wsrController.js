angular.module('wsr', []).controller('WsrCtrl', [ '$scope', function($scope) {
	$scope.t1 = 120;
	$scope.t2 = 180;
	$scope.t3 = 150;
	$scope.wsr = 50;
	$scope.infoExpanded = false;

	$scope.calculate = function() {
		if (isNumeric($scope.t1) && isNumeric($scope.t2) && isNumeric($scope.t3)) {
			$scope.wsr = round((($scope.t2 - $scope.t3) / ($scope.t2 - $scope.t1)) * 100);
		}
	}
	
	$scope.toggleInfo = function() {
		$("#panel").slideToggle("slow");
		$scope.infoExpanded = !$scope.infoExpanded;
		if ($scope.infoExpanded) {
			$("#wsr-infoBox-title-icon").toggleClass('glyphicon-menu-down glyphicon-menu-up');
		} else {
			$("#wsr-infoBox-title-icon").toggleClass('glyphicon-menu-up glyphicon-menu-down');
		}
		
	}
} ]);

function isNumeric(n) {
  return !isNaN(parseFloat(n)) && isFinite(n);
}

function round(n) {
	return Math.round(n * 100) / 100
}