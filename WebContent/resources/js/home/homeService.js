angular.module('homeService', [ 'resourceProvider' ])
.factory('Home', [ 'Resource', function(Resource) {

	return Resource(':path', {
		path : '@path',
	}, {
		"welcomeText" : {
			method : 'GET',
			params : {
				path : 'welcome',
			}
		}
	});

} ]);