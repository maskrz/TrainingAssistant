angular.module('journal', [ 'journalService' ]).controller('JournalCtrl',
		[ '$scope', 'Journal', function($scope, Journal) {
			$scope.colors = null;
			$scope.athletes = [];
			$scope.atletesCount = 0;
			$scope.maxAthletes = 0;

			$scope.loadColors = function() {
				Journal.loadColors(function(loadedColors) {
					$scope.colors = loadedColors.text.split(";");
					$scope.maxAthletes = $scope.colors.length;
					console.log($scope.maxAthletes);
				});
			}

			$scope.initializeStopwatches = function(athletes) {
				initializeStopwatches(athletes);
			}

			$scope.$watch('athletes.length', function() {
				setTimeout(function() {
					initializeStopwatches($scope.athletes);
				}, 500);
			});

			$scope.addAthlete = function(athleteName) {
				addAthlete($scope, escapeSpaces(athleteName))
			}

			$scope.startStopwatch = function(athlete) {
				athlete.stopwatch.runner('start');
			}

			$scope.stopStopwatch = function(athlete) {
				athlete.stopwatch.runner('stop');
			}

			$scope.resetStopwatch = function(athlete) {
				athlete.stopwatch.runner('reset');
			}

			$scope.restoreSpaces = function(athleteName) {
				return restoreSpaces(athleteName);
			}

			$scope.addTime = function(athlete) {
				console.log(athlete.stopwatch.runner('info'));
				var time = athlete.stopwatch.runner('info').formattedTime;
				athlete.times.push(time);
			}
		} ]);

function addAthlete(scope, athleteName) {
	if (scope.athletes.length < scope.maxAthletes) {
		var athlete = {
			name : athleteName,
			times : []
		};
		scope.athletes.push(athlete);
		scope.athletesCount++;
		var index = findIndex(scope.athletes, athleteName);
		scope.athletes[index].times = [];
		athlete.color = scope.colors[index];
	}
}

function findIndex(athletes, athelteName) {
	for (var i = 0; i < athletes.length; i++) {
		if (athletes[i].name == athelteName) {
			return i;
		}
	}
	return -1;
}

function initializeStopwatches(athletes) {
	for (var i = 0; i < athletes.length; i++) {
		var athlete = athletes[i];
		if (athlete.stopwatch == undefined) {
			$('#runner-' + athlete.name).runner();
			athlete.stopwatch = $('#runner-' + athlete.name);
		}		
	}
}

function escapeSpaces(str) {
	return str.replace(" ", "-");
}

function restoreSpaces(str) {
	return str.replace("-", " ");
}