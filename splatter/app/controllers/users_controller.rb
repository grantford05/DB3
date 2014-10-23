class UsersController < ApplicationController

  before_filter :set_headers

  # GET /users
  # GET /users.json
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  # GET /users/1.json
  def show
    db = UserRepository.new(Riak::Client.new)
    @user = db.find(params[:id])
    render json: @user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new
    @user.email = params[:email]
    @user.name = params[:name]
    @user.password = params[:password]
    @user.blurb = params[:blurb]
    db = UserRepository.new(Riak::Client.new)

    if db.save(@user)
      render json: @user, status: :created, location: @user
    else
      render json: "error", status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])

    if @user.update(user_params(params))
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    head :no_content
  end

 # Show splatts
  def splatts
    db = UserRepository.new(Riak::Client.new)
    @user = db.find(params[:id])
    db = SplattRepository.new(Riak::Client.new, @user)
    render json: db.all
  end

 # Show follows
  def show_follows
    @user = User.find(params[:id])
    render json: @user.follows
  end

 # Show followers
  def show_followers
    @user = User.find(params[:id])
    render json: @user.followed_by
  end

 # Add follow
  def add_follows
    @follower = User.find(params[:id])
    @followed = User.find(params[:follows_id])
    
    if @follower.follows << @followed
      head :no_content
    else
      render json: @follower.errors, status: :unprocessable_entity
    end
  end

 # Delete follow
  def delete_follows
    @follower = User.find(params[:id])
    @followed = User.find(params[:follows_id])

    if @follower.follows.delete(@followed)
      head :no_content
    else
      render json: @follower.errors, status: :unprocessable_entity
    end 
  end

 # GET users/splatts-feed/1
  def splatts_feed
    @feed = Splatt.find_by_sql("SELECT body, created_at FROM splatts JOIN follows ON follows.followed_id = splatts.user_id WHERE follows.follower_id = #{(params[:id])} ORDER BY created_at") 

    render json: @feed
  end

  private
  def user_params(params)
    params.permit(:email, :password, :name, :blurb)
  end

  def set_headers
    headers['Access-Control-Allow-Origin'] = '*'
  end

end
