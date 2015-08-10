var uploadPhotoApp = angular.module('uploadPhotoApp', ['ngTagsInput'])
.controller('uploadPhotoCtrl', function($scope, $http, $timeout, fileUpload){

    $scope.uploadPhoto = function(){
        console.log('wtf');

        $scope.uploadPhotoForm.title.$dirty = true;

        if (! $scope.uploadPhotoForm.$valid ){
           
            return false;
        }
        console.log('runnnn');

      
        var file = $scope.file;
        console.log('file is ' );
        console.dir(file);
        var uploadUrl = "/submit-photo";
        fileUpload.uploadFileToUrl(file, uploadUrl);
       
    };
})

.directive('fileModel', ['$parse', function ($parse) {
    return {
        restrict: 'A',
        link: function(scope, element, attrs) {
            var model = $parse(attrs.fileModel);
            var modelSetter = model.assign;
            
            element.bind('change', function(){
                scope.$apply(function(){
                    modelSetter(scope, element[0].files[0]);
                });
            });
        }
    };
}])
.service('fileUpload', ['$http', function ($http) {
    this.uploadFileToUrl = function(file, uploadUrl){
        console.log('upload');

        var fd = new FormData($('#uploadPhotoForm')[0]);
        fd.append('file', file);
        $http.post(uploadUrl, fd, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined}
        })
        .success(function(data){
            if (data.success){
                window.location = "/photos";
            }
        })
        .error(function(){
        });
    }
}]);

var uploadVideoApp = angular.module('uploadVideoApp', ['ngTagsInput'])
.controller('uploadVideoCtrl', function($scope, $http, $timeout){

    $scope.uploadVideo = function(){
        console.log('wtffffffffff');

        $scope.uploadVideoForm.url.$dirty = true;
        $scope.uploadVideoForm.title.$dirty = true;

        if (! $scope.uploadVideoForm.$valid ){
           
            return false;
        }
        console.log('runnnn');
        var fd = new FormData($('#uploadVideoForm')[0]);

        $http.post("/submit-video", fd, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined}
        })
        .success(function(data){

            if (data.success){
                window.location = "/videos";
            }
        })
        .error(function(){
        });
      
       
    };
});