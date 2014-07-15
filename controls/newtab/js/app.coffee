angular.module 'app', []

.controller 'MainCtrl', ($scope, $timeout) ->
	$scope.date = {}

	do updateTime = ->
		$scope.date.tz = new Date
		$timeout updateTime, 1000

	do changeBackgroundImage = ->
		$scope.backgroundImage = "./img/" + Math.floor(1+ Math.random()*8) + ".jpg"
		document.getElementsByTagName("html")[0].style.backgroundImage = $scope.backgroundImage;
		$timeout changeBackgroundImage, 30000
