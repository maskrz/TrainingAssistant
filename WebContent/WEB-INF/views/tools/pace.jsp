<div ng-app="pace" ng-controller="PaceCtrl">
	<div class="row tool-row">
		<div class="col-md-2 tool-label">
			<label>Dystans: </label>
		</div>
		<div class="col-md-3 tool-input">
			<input type="number" class="form-control" ng-model="distance" min="0"
				ng-change="calculate(distance, time)">
		</div>
		<div class="col-md-7 tool-note">
			<label>(W metrach)</label>
		</div>
	</div>
	<div class="row tool-row">
		<div class="col-md-2 tool-label">
			<label>Czas: </label>
		</div>
		<div class="col-md-3 tool-input">
			<input type="number" class="form-control" ng-model="time" min="0"
				ng-change="calculate(distance, time)">
		</div>
		<div class="col-md-7 tool-note">
			<label>(W sekundach)</label>
		</div>
	</div>

	<div class="tool-section-title">Przeliczone czasy</div>

	<div class="row">
		<div class="col-md-6 pace-results-left">
			<div class="row tool-row">
				<div class="col-md-4 tool-label">
					<label>Prędkość (km/h): </label>
				</div>
				<div class="col-md-8 tool-note">
					<label>{{velocityKMPH}}</label>
				</div>
			</div>
			<div class="row tool-row">
				<div class="col-md-4 tool-label">
					<label>Prędkość (m/s): </label>
				</div>
				<div class="col-md-8 tool-note">
					<label>{{velocityMPS}}</label>
				</div>
			</div>
			<div class="row tool-row">
				<div class="col-md-4 tool-label">
					<label>Dystans: </label>
				</div>
				<div class="col-md-4 tool-label">
					<input type="number" class="form-control" ng-model="customDistance"
						min="0" ng-change="calculate(distance, time)">
				</div>
			</div>
			<div class="row tool-row">
				<div class="col-md-4 tool-label">
					<label>Czas: </label>
				</div>
				<div class="col-md-8 tool-note">
					<label>{{customTime}}</label>
				</div>
			</div>
		</div>
		<div class="col-md-6 pace-results-right">
			<div class="row tool-row">
				<div class="col-md-4 tool-label">
					<label>100m: </label>
				</div>
				<div class="col-md-8 tool-note">
					<label>{{time100}}</label>
				</div>
			</div>
			<div class="row tool-row">
				<div class="col-md-4 tool-label">
					<label>150m: </label>
				</div>
				<div class="col-md-8 tool-note">
					<label>{{time150}}</label>
				</div>
			</div>
			<div class="row tool-row">
				<div class="col-md-4 tool-label">
					<label>200m: </label>
				</div>
				<div class="col-md-8 tool-note">
					<label>{{time200}}</label>
				</div>
			</div>
			<div class="row tool-row">
				<div class="col-md-4 tool-label">
					<label>300m: </label>
				</div>
				<div class="col-md-8 tool-note">
					<label>{{time300}}</label>
				</div>
			</div>
			<div class="row tool-row">
				<div class="col-md-4 tool-label">
					<label>400m: </label>
				</div>
				<div class="col-md-8 tool-note">
					<label>{{time400}}</label>
				</div>
			</div>
			<div class="row tool-row">
				<div class="col-md-4 tool-label">
					<label>500m: </label>
				</div>
				<div class="col-md-8 tool-note">
					<label>{{time500}}</label>
				</div>
			</div>
		</div>
	</div>
</div>