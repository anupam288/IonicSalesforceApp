angular.module('starter.services', [])

.factory('Chats', function() {
  // Might use a resource here that returns a JSON array

  // Some fake testing data
  var chats = [{
    id: 0,
    name: 'Ben Sparrow',
    lastText: 'You on your way?',
    face: 'https://pbs.twimg.com/profile_images/514549811765211136/9SgAuHeY.png'
  }, {
    id: 1,
    name: 'Max Lynx',
    lastText: 'Hey, it\'s me',
    face: 'https://avatars3.githubusercontent.com/u/11214?v=3&s=460'
  }, {
    id: 2,
    name: 'Andrew Jostlin',
    lastText: 'Did you get the ice cream?',
    face: 'https://pbs.twimg.com/profile_images/491274378181488640/Tti0fFVJ.jpeg'
  }, {
    id: 3,
    name: 'Adam Bradleyson',
    lastText: 'I should buy a boat',
    face: 'https://pbs.twimg.com/profile_images/479090794058379264/84TKj_qa.jpeg'
  }, {
    id: 4,
    name: 'Perry Governor',
    lastText: 'Look at my mukluks!',
    face: 'https://pbs.twimg.com/profile_images/491995398135767040/ie2Z_V6e.jpeg'
  }];

  return {
    all: function() {
      return chats;
    },
    remove: function(chat) {
      chats.splice(chats.indexOf(chat), 1);
    },
    get: function(chatId) {
      for (var i = 0; i < chats.length; i++) {
        if (chats[i].id === parseInt(chatId)) {
          return chats[i];
        }
      }
      return null;
    }
  }
})

/**
 * A simple example service that returns some data.
 */
.factory('Friends', function($q,$rootScope) {

     function getSobjects(callback){              
        
    
     }  

     var friends = [];  
    
     function getData(){  
         var deferred = $q.defer();  

        MyAppContactController.getContactList(function(result){  
           
           $rootScope.$apply(function(){  
             friends = result;
             console.log(JSON.stringify(friends));
             deferred.resolve(result);  
           });

         });  

         return deferred.promise;  
     }  


  return {
    all: function() {
      return getData();
    },
    get: function(friendId) {

    console.log('Getting the fried id ' +  friendId + ' from ' + JSON.stringify(friends));
      // Simple index lookup
    //  return friends[friendId];
     for (var i = 0; i < friends.length; i++) {
        if (friends[i].Id === friendId) {
         console.log('Found ' +  friends[i]);
          return friends[i];
        }
      }
      return null;
    }
  }
});
