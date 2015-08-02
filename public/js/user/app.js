var uploadPhotoApp = angular.module('uploadPhotoApp', ['ngTagsInput'])
.controller('uploadPhotoCtrl', function($scope, $http, $timeout){

    $scope.uploadPhoto = function(){
      
        if (! $scope.uploadPhotoForm.$valid ){
           
            return false;
        }
        var file = $scope.image;
        
        var uploadUrl = 'http://laravel.test/submit-photo';
       
        var fd = new FormData(jQuery('#uploadPhotoForm')[0]);
        // fd.append('file', file);
        // __abcv_block_ui.show();
        $http.post(
            uploadUrl, 
            fd, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined}
            }
        )
        .success(function(response){
            if (response.success){
                // $location.path('/thank-you')
            }else{
               
               
            }
            // __abcv_block_ui.hide();
        })
        .error(function(){
             // __abcv_block_ui.hide();
        });
    };
});