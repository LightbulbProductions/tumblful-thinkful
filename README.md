<<<<<<< HEAD
Tumblful
=============
This is the sample version of Tumblful, an extension of Tweetful for creating different types of posts, produced for Thinkful's "Essentials of Full Stack Development" course.

Before Beginning
-------------

Ensure you have the latest version of Ruby Version Manager (RVM) and ruby 2.1.5 installed.

```sh
# If you do not have RVM installed, you can do so as follows
\curl -L https://get.rvm.io | bash -s stable

# If you already have RVM install, make sure it's up to date
rvm get head # rvm update for older versions

# Install the most recent Ruby 2.1.5 package
rvm install ruby-2.1.5
```

Getting Started
-------------

```sh
# Clone the repository
git clone git@github.com:Thinkful-Ed/tumblful.git

cd ./tumblful

# Install the required gems
bundle install

# Generate a new config/initializers/secret_token.rb file.
echo "Tumblful::Application.config.secret_key_base = '`bundle exec rake secret`'" > config/initializers/secret_token.rb

# Set up the database
bundle exec rake db:create db:migrate db:test:prepare

# Start the server
bundle exec rails s
```

Once you've performed the above actions, you can view the website at http://localhost:3000.
Start by creating a user for yourself and then consider using the rake tasks below to seed
additional test data.


Run the Tests
-------------

```sh
bundle exec rspec
```

Authors
-------

**Scott Robinson**

- http://github.com/SnareChops
=======
# tumblful-thinkful
Thinkful's rails version of tumblr. 
>>>>>>> 8adb7e8d8f55d5fa62543f43aae1831e1e067ba5
