<div ng-app="wsr" ng-controller="WsrCtrl">
	<div class="row wsr-row">
		<div class="col-md-2 wsr-label">
			<label>T1: </label>
		</div>
		<div class="col-md-3 wsr-input">
			<input type="number" class="form-control" ng-model="t1" min="30"
				max="200" ng-change="calculate()">
		</div>
		<div class="col-md-7 wsr-note">
			<label>(Tętno przed treningiem)</label>
		</div>
	</div>

	<div class="row wsr-row">
		<div class="col-md-2 wsr-label">
			<label>T2: </label>
		</div>
		<div class="col-md-3 wsr-input">
			<input type="number" class="form-control" ng-model="t2" min="60"
				max="250" ng-change="calculate()">
		</div>
		<div class="col-md-7 wsr-note">
			<label>(Tętno po ostatnim głównym ćwiczeniu)</label>
		</div>
	</div>

	<div class="row wsr-row">
		<div class="col-md-2 wsr-label">
			<label>T3: </label>
		</div>
		<div class="col-md-3 wsr-input">
			<input type="number" class="form-control" ng-model="t3" min="30"
				max="200" ng-change="calculate()">
		</div>
		<div class="col-md-7 wsr-note">
			<label>(Tętno po 4 minutach restytucji po głównym ćwiczeniu)</label>
		</div>
	</div>

	<div class="row wsr-row">
		<div class="col-md-2 wsr-label">
			<label>WSR: </label>
		</div>
		<div class="col-md-3 wsr-input">
			<input type="number" class="form-control" readonly ng-model="wsr">
		</div>
		<div class="col-md-7 wsr-note">
			<label>(( T2 - T3 / T2 - T1) x 100%)</label>
		</div>
	</div>


	<div id="flip" class="wsr-infoBox-title" ng-click="toggleInfo()">
		O co chodzi? <span id="wsr-infoBox-title-icon"
			class="glyphicon glyphicon-menu-down"></span>
	</div>
	<div id="panel" class="wsr-infoBox-content">
		<p>Wskaźnik pozwala ocenić czy zaaplikowane obciążenie było
			adekwatne do możliwości fizycznych zawodnika.</p>
		<p>Interpretacja WSR w zależności od uzyskanej wartości:</p>
		<ul>
			<li>< 50 Wysiłek zbyt ciężki. Trudności z powrotem do stanu
				początkowego</li>
			<li>50-60 Wysiłek kształtujący powodujący pozytywne zmiany
				adaptacyjne organizmu</li>
			<li>60-80 Wysiłek podtrzymujący obecną formę</li>
			<li>>80 Wysiłek zbyt lekki</li>
		</ul>
		<p>Posługiwanie się tym wskaźnikiem wymaga pomiaru tętna
			dokonanych rano po przebudzeniu się w tej samej pozycji przez 1 min.
			(T) jak również przez 10 s bezpośrednio przed treningiem (T1), po
			ostatnim głównym ćwiczeniu treningu (T2) oraz po czterech minutach
			restytucji po głównym ćwiczeniu (T3).</p>
		<p>Przy WSR = 50 – 60 %:</p>
		<ul>
			<li>T nie zmienia się lub obniżyło się nie więcej niż o 10
				uderzeń na minutę – prawidłowe obciążenie pod względem objętości i
				intensywności</li>
			<li>T wzrasta o więcej niż 10 uderzeń na minutę – obciążenie
				prawidłowe, zbyt duża intensywność</li>
			<li>T obniża się więcej niż 4 uderzenia na minutę – za duża
				objętość</li>
		</ul>
		<p>Przy > WSR 60 %</p>
		<ul>
			<li>T stabilne – można zwiększyć objętość i intensywność</li>
			<li>T rośnie – za małe obciążenie objętościowe</li>
			<li>T spada – jest wówczas niedociążenie intensywnością</li>
		</ul>
		<p>
			Informacje pochodzą stąd: <a
				href="http://www.szkolnictwo.pl/index.php?id=PU4033">klik!</a> oraz
			stąd: <a
				href="http://ruchtozdrowie.com.pl/joomla/proby-i-testy-sprawnosci-fizycznej/231-wskaznik-restytucji-klonowicza-opis-badania">klik!</a>
		</p>
	</div>
</div>