# README

heroku create
heroku buildpacks:add --index 1 heroku/ruby
heroku buildpacks:add --index 2 heroku/nodejs
git push heroku master
heroku run rails db:migrate db:seed