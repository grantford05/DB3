(function() {

var app = angular.module('splatter-web', ['ngResource']);

//USER FACTORY
app.factory('User', function($resource)  
{
	return $resource('http://ford.sqrawler.com/api/users/:id.json', {id: '@id'},
		{'update': {method:'PUT'}} );
});

	//USER CONTROLLER
	app.controller('UserController', function(User) 
	{
	    this.data = {};
		this.ulist = User.query();

		this.getUser = function(id) {
		return User.get({id: id});
	};

	//USER LOGIN
	this.login = function() 
	{
		this.loggedUser = this.getUser(this.data.id);
		this.data = {};
	};
	
	//USER UPDATE	 
	this.updateUser = function() 
	{
		this.loggedUser.name = this.data.name;
		this.loggedUser.email = this.data.email;
		this.loggedUser.blurb = this.data.blurb;
		this.loggedUser.$update();
		this.data = {};
	};

	//USER CREATE
	this.createUser = function() 
	{
		u = new User();
		u.name = this.data.name;
		u.email = this.data.email;
		u.password = this.data.password;
		u.blurb = this.data.blurb;
		u.$save();
		this.data = {};
	};

	//USER DELETE
	this.delUser = function() 
	{
		User.delete({id: this.data.delid});
	};

});	

///////////////////////////////////////////////////////////

//SPLATT FACTORY
app.factory('Splatt', function($resource)  
{
	return $resource('http://ford.sqrawler.com/api/splatts:id.json', {},
		{'update': {method:'PUT'}} );
});

//SPLATT CONTROLLER
app.controller('SplattController', function(Splatt) 
{
    this.data = {};
	this.slist = Splatt.query();

	//GET SPLATT
	this.getSplatt = function(id) 
	{
		return Splatt.get({id: id});
	};

	//SPLATT CREATE
	this.createSplatt = function() 
	{
		s = new Splatt();
		s.body = this.data.body;
		s.user_id = this.data.user_id;
		s.$save();
		this.data = {};
	};

	//SPLATT DELETE
	this.delSplatt = function() 
	{
		Splatt.delete({id: this.data.delid});
	};

});

///////////////////////////////////////////////////////////

//FOLLOW FACTORY
app.factory('Follow', function($resource)  
{
	return $resource('http://ford.sqrawler.com/api/users/follows/:id.json', {},
		{'update': {method:'PUT'}} );
});

//FOLLOW CONTROLLER
app.controller('FollowController', function(Follow) 
{
    this.data = {};

    //GET FOLLOW
	this.getFollow = function(id) 
	{
		return Follow.get({id: id});
	};

    //CREATE FOLLOW
    this.createFollow = function() 
	{
		f = new Follow();
		f.id = this.data.id;
		f.follows_id = this.data.follows_id;
		f.$save();
		this.data = {};
	};

	/*//DELETE FOLLOW
	this.deleteFollow = function()
	{
		Follow.delete({id: this.data.unfollower_id}, {follows_id: this.data.unfollows_id})
	};*/

});

///////////////////////////////////////////////////////////

//SPLATTS-FEED FACTORY
app.factory('SplattsFeed', function($resource)  
{
	return $resource('http://ford.sqrawler.com/api/users/splatts-feed/:id.json', {},
		{'update': {method:'PUT'}} );
});

//SPLATTS-FEED CONTROLLER
app.controller('SplattsFeedController', function(Feed) 
{
	this.data = {};
	this.flist = Feed.query();

	//GET FEED
	this.getFeed = function(id) 
	{ 
		return Feed.get({id: id});
	};

	//GET FEED DATA
	this.splattFeed = function() 
	{
		this.id = this.getFeed(this.data.id);
		this.data = {};
	};
});

})();