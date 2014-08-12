ls
cd work/
ls
cd demo/
rails generate controller Say hello goodbye
ls
cd app/controllers/
ls
cd ../..
ls
cd app/views/say/
ls
nano hello.html.erb 
cd ..
ls
cd controllers/
ls
nano say_controller.rb 
cd ..
cd views/say/
ls
nano hello.html.erb 
ls
nano goodbye.html.erb 
nano hello.html.erb 
nano goodbye.html.erb 
sudo gem install rails --version 4.0.0 --no-ri --no-rdoc
ls
mkdir work
ls
cd work/
rails new demo
ls
cd demo/
ls
rake about
rails server
ls
cd splatter/
rails server
exit
sudo gem install rails-api
rails-api new splatter
ls
cd splatter/
rails generate scaffold User email:string password:string name:string blurb:text
ls
rake db:migrate
ls
cd app/controllers/
ls
nano users_controller.rb 
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users -d '{"user": {"email:"test@foo.com", "name":"Test User", "password":"foo"}}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users -d '{"user": {"email":"test@foo.com", "name":"Test User", "password":"foo"}}'
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/1
curl -i -H "Content-type: application/json" -X DELETE http://ford.sqrawler.com:3000/users/1
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/1
exit
cd splatter/
rails generate scaffold Splatt body:string user:belongs_to
rake db:migrate
ls
cd app/
ls
cd models/
ls
cd ..
ls
cd controllers/
ls
cd ..
cd models/
ls
cd concerns/
ls
cd ..
nano splatt.rb 
ls
nano user.rb 
cd ..
ls
cd controllers/
ls
nano splatts_controller.rb 
ls
nano users_controller.rb 
ls
nano splatts_controller.rb 
nano users_controller.rb 
nano splatts_controller.rb 
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/splatts -d ' {"splatt:" {"body":"Hello, Splatter world", "user_id":1}}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users -d '{"user": {"email":"test@foo.com", "name":"Test User", "password":"foo"}}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/splatts -d ' {"splatt:" {"body":"Hello, Splatter world", "user_id":1}}'
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/1
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/2
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/splatts -d ' {"splatt:" {"body":"Hello, Splatter world", "user_id":2}}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/splatts -d '{"splatt": {"body":"Hello, Splatter world", "user_id":2}}'
ls
cd ..
ls
cd models/
nano user.rb 
cd ..
cd controllers/
nano users_controller.rb 
cd ..
cd controllers/
ls
cd ..
ls
cd ..
ls
cd config/
nano routes.rb 
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts/1
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts/2
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts/1
ls
cd ..
ls
cd app
ls
cd controllers/
nano users_controller.rb 
ls
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts/2
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts/1
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts/2
ls
nano users_controller.rb 
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts/2
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts/1
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts/2
exit
passwd
rails server
ls
cd splatter/
rails server
exit
ls
cd ..
ls
cd ford/
ls
git config --global user.name "fordgm2"
git config --global user.email "grantford05@gmail.com"
ls -al ~/.ssh
ls
ls -al ~/.ssh
cd ..
ls
cd ..
ls
cd etc/
ls
cd ..
cd home/
ls
ls -f
cd ford/
ls
ls -f ~/.ssh
ls -al ~/.ssh
cd ..
ls -al ~/.ssh
cd ford/
cd ..
ls
cd ford/
ls -f
nano .gitconfig 
cd .
ls
nano .
ls
ls -f
mkdir .ssh
ls -f
cd .ssh
ls
nano id_rsa
ls
nano id_rsa.pub
ls
nano known_hosts
ls
cd ..
ls -al ~/.ssh
ls
rmvdir .ssh
rmdir .ssh
ls
rm -rf .ssh
ls
cd -f
ls -f
cd splatter/
ls
cd db/migrate/
ls
nano <timestamp>_create_follows.rb
ls
nano 2014074132953_create_dollows.rb
ls
mv 2014074132953_create_dollows.rb 2014084132953_create_dollows.rb 
ls
cd ../..
cd app/models/
nano user.rb 
u2.follows
u2.follows;
cd ..\
cd ../..
ls
cd app/controllers/
ls
nano users_controller.rb 
cd ..
ls
cd models/
ls
nano user.rb 
cd ..
cd controllers/
ls
nano users_controller.rb 
cd ../..
cd config/
nano routes.rb 
curl -i -H "Content-type: application/json" -x POST http://ford.sqrawler.com:3000/users -d '{"user": {"email":"tet@foo.com", "name":"Tester User", "password":"foo"}}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users -d '{"user": {"email":"test@foo.com", "name":"Tester User", "password":"foo"}}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawion/json" -X GET http://ford.sqrawler.com:3000/users
ls
cd ..
ls
cd app/controllers/
nano users_controller.rb 
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users/follows '{"id":2, "follower_id":3}'
nano users_controller.rb 
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users/follows '{"id":2, "follower_id":3}'
nano users_controller.rb 
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users/follows '{"id":2, "follower_id":3}'
cd ..\
cd ..
cd models/
ls
cd ..
cd config/
nano routes.rb 
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users/follows '{"id":2, "follower_id":3}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users/follows '{"id":2, "follower_id":1}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users/follows '{"id":2, "follows_id":3}'
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users/follows '{"id":2, "follows_id":3}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users/follows -d '{"id":2, "follows_id":3}'
cd splatter/
rails erver
rails server
rake db:migrate
rails server
ls
ls -f
ssh-keygen -t rsa -C "grantford05@gmail.com"
ls
ls -f
cd ..
ls
cd ford/
ls -f
cd .ssh
ls
cd ls
ls
nano ls
rm ls
ls
rm ls.pub
ssh-keygen -t rsa -C "grantford05@gmail.com"
ls
cd .ssh
ls
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
clip < ~/.ssh/id_rsa.pub
ssh -T git@hithub.com
ssh -T git@github.com
ssh -vT git@github.com
clif < ~/.ssh/id_rsa.pub
clip < ~/.ssh/id_rsa.pub
sudo apt-get install geomview
clip < ~/.ssh/id_rsa.pub
clip < ~/.ssh/id_sa.pub
clip < ~/.ssh/id_rsa.pub
ls
nano id_rsa.pub
ssh -T git@github.com
ls
cd ..
ls
cd splatter/
ls
cd app/
ls
cd models/
ls
nano user.rb 
ls
cd ..
ls
cd controllers/
ls
nano users_controller.rb 
ls
cd ..
ls
cd .
cd ..
ls
cd config/
ls
nano routes.rb 
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users/follows '{"id":2, "follower_id":3}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users/follows '{"id":2, "follower_id":1}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users/follows '{"id":2, "follower_id":3}'
nano routes.rb 
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users/follows '{"id":2, "follower_id":3}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users/follows -d '{"id":2, "follower_id":3}'
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/
cd ..
cd app/controllers/
ls
nano users_controller.rb 
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users/follows -d '{"id":2, "follows_id":3}'
nano users_controller.rb 
cd ..
cd models/
nano user.rb 
cd ../..
cd db/migrate/
ls
nano 2014084132953_create_dollows.rb 
rake db:rollback
mv 2014084132953_create_dollows.rb 2014084132953_create_follows.rb 
ls
rake db:migrate
nano 2014084132953_create_follows.rb 
rake db:migrate
nano 2014084132953_create_follows.rb 
rake db:migrate
nano 2014084132953_create_follows.rb 
rake db:migrate
cd ../..
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users/follows -d '{"id":2, "follows_id":3}'
cd app/controllers/
nano users_controller.rb 
cd ../..
cd conf
cd config/
nano routes.rb 
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users
cd ..
ls
cd app/controllers/
nano users_controller.rb 
cd ../..
cd config/
nano routes.rb 
cd ..
cd config/
nano routes.rb 
cd ..
ls
cd app/models/
nano splatt.rb 
cd ..
ls
cd controllers/
ls
nano users_controller.rb 
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/1
nano users_controller.rb 
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/splatts
cd ../..
nano config/routes.rb 
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/1
nano config/routes.rb 
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/1
cd app/controllers/
nano users_controller.rb 
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/1
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/2
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/3
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/1
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users/follows -d '{"id":2, "follows_id":3}'
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/2
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/3
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/2
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/splatts -d '{"splatt": {"body:"Chp Chipperson", "user_id":3}}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/splatts -d '{"splatt": {"body":"Chip Chipperson", "user_id":3}}'
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/1
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/2
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/3
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/2
nano users_controller.rb 
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/splatts/1
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/splatts/2
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/splatts/
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/2
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/3
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/2
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/3
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/2
nano users_controller.rb 
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/2
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/3
curl -i -H "Content-type: application/json" -X GET http://ford.sqrawler.com:3000/users/splatts-feed/2
nano users_controller.rb 
exit
cd splatter/
rails server
exit
cd splatter/
ls
cd app/
ls
cd models/
ls
cd ..
cd splatter/
rails server
exit
ls
cd splatter/
ls
cd app
ls
cd models/
ls
nano user.rb 
ls
cd ..
ls
cd models/
nano user.rb 
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users -d '{"user": {"email":"test@foo.com", "name":"Test User", "password":"fart"}}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users -d '{"user": {"email":"test4@foo.com", "name":"Test User", "password":"fart"}}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users -d '{"user": {"email":"test4@foo.com", "name":"Test User", "password":"fartfart1"}}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users -d '{"user": {"email":"test5@foo.com", "name":"Test User", "password":"fartfart1"}}'
rake db:migrate
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users -d '{"user": {"email":"test5@foo.com", "name":"Test User", "password":"fart"}}'
curl -i -H "Content-type: application/json" -X POST http://ford.sqrawler.com:3000/users -d '{"user": {"email":"test6@foo.com", "name":"Test User", "password":"fart"}}'
nano user.rb 
cd ../../
git add .
ls
cd ..
ls
cd ..
ls
cd ford/
ls
cd ..
ls
cd ford/
cd ..
ls
mkdir db3
cd ford/
ls
mkdir db3
mv splatter db3
cd db3/
ls
cd ..
ls
mv work db3
git init
git add .
git commit -m "initial commit"
git remote add origin git@github.com:grantford05/db3.git
git push -u origin master
git remote add origin git@github.com:grantford05/db3
git remote add origin git@github.com:grantford05/db3.git
git push
ls
cd bd
cd db3/
ls
cd splatter/
ls
cd ../..
ls
cd db3/
git init
git add .
git commit -m "first commit"
git remote add origin git@github.com:grantford05/db3.git

git remote add origin git@github.com:grantford05/db3.git
git push -u origin master
git pull
git pull origin master
git psh -u origin master
git push -u origin master
