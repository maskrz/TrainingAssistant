angular.module('journalService', [ 'resourceProvider' ])
.factory('Journal', [ 'Resource', function(Resource) {
	return Resource(':path', {
		path : '@path',
	}, {
		"loadColors" : {method : 'POST', params : { path : 'loadColors'}}
	});

} ]);
