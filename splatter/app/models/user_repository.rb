class UserRepository

  BUCKET = 'users'

  #INITIALIZE	
  def initialize(client)
    @client = client
  end
	
  #ALL
  def all

  end
  
 #DELETE
  def delete(user)
	
  end

  #FIND
  def find(key)
    riak_obj = @client.bucket(BUCKET)[key]
    user = User.new
    user.email = riak_obj.data['email']
    user.name = riak_obj.data['name']
    user.password = riak_obj.data['password']
    user.blurb = riak_obj.data['blurb']
    user.follows = riak_obj.data['follows']
    user.followers = riak_obj.data['followers']
    user
  end

  #SAVE
  def save(user)
    users = @client.bucket(BUCKET)
    key = user.email

    unless users.exists?(key)
      riak_obj = users.new(key)
      riak_obj.data = user
      riak_obj.content_type = 'application/json'
      riak_obj.store
    end
  end

  def update(user)

  end

  #FOLLOW
  def follow(follower, followed)
    if follower.follows
      follower.follows << followed.email
    else
      follower.follows = [followed.email]
    end

    if followed.followers
      followed.followers << follower.email
    else
      followed.followers = [follows.email]
    end

    update(followed)
    update(follower)
  end

  #UNFOLLOW
  def unfollow(follower, followed)
    if follower.follows
      follower.follows.delete(followed.email)
    end

    if followed.followers
     follower.follows.delete(follower.email)
    end
  end      

end
