<div ng-app="journal" ng-controller="JournalCtrl" ng-init="loadColors()">
	Dzienniczek treningowy

	<div class="row tool-row">
		<div class="col-md-2 tool-label">
			<label>Nowy zawodnik: </label>
		</div>
		<div class="col-md-4">
			<input type="text" class="form-control" ng-model="athleteName">
		</div>
		<div class="col-md-6">
			<button type="button" class="btn btn-primary"
				ng-click="addAthlete(athleteName)">Dodaj</button>
		</div>
	</div>

	<div class="row tool-row" ng-repeat="athlete in athletes">
		<div class="col-md-2 tool-label"
			ng-style="{'background-color': athlete.color}">
			<label>{{athlete.name}}</label>
		</div>
		<div class="col-md-10">
			<div class="row">
				<div class="col-md-3"
					ng-repeat="time in athlete.times track by $index">{{time}}</div>
			</div>
		</div>
	</div>

	<div class="row tool-row" ng-repeat="athlete in athletes">
		<span ng-attr-id="{{ 'runner-' + athlete.name }}"
			ng-style="{'background-color': athlete.color}"></span>
		<button type="button" class="btn btn-primary"
			ng-click="startStopwatch(athlete)">Start</button>
		<button type="button" class="btn btn-warning"
			ng-click="stopStopwatch(athlete)">Stop</button>
		<button type="button" class="btn btn-danger"
			ng-click="resetStopwatch(athlete)">Reset</button>
		<button type="button" class="btn btn-success"
			ng-click="addTime(athlete)">Dodaj to czasow</button>
	</div>


</div>