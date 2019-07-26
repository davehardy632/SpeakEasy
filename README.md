# README

## DESCRIPTION
Welcome to Speakeasy! This is a [Turing School of Software and Design](https://turing.io/) project that facilitates and adds fun to remote team workflow. The project is based on requirements found [here](https://backend.turing.io/module3/projects/terrificus).

The project revolves around sending deployment webhooks and Slack commands to a Rails database, and then retreiving information from that database via Amazon Skills and Alexa devices or Slack.

Users can hear Github commit messages or branch names involved with merges, as well as add shoutouts to their teams.

## COMMANDS
* "Alexa Speakeasy" --> Invocation statement to tell Alexa to stand by for sub-commands
* "Count workflow messages" --> Outputs a number of deployment messages (one for running and one for finished each merge)
* "Newest workflow message" --> Most recent deployment message
* "Shoutouts from [username]" --> Returns shoutouts (from Slack) from that person
* "Newest shoutout" --> Returns newest shoutout
* Slack Command "/shoutout [person and message]" shoutout to a person from Slack to Alexa
* Slack Command "/gitmessage" Ask alexa for git messages from Slack 

## REQUIREMENTS
Ruby version
* [Ruby 2.4.1](https://www.ruby-lang.org/en/downloads/)
* [Rails 5.2.3](https://rubygems.org/gems/rails/versions/5.2.3)
  
## Dependencies
```
gem 'figaro'
gem 'faraday'
gem 'rspec-rails'
gem 'sass-rails'
gem 'newrelic_rpm'
```
  
## Database initialization
```
rails db:{drop,create,migrate,seed}
```
  
## How to run the test suite
```$ rspec```
  
## Instructions
1. Set up a Buildkite Agent to enable the webhook post request from deployment build to the Flask API receiver
1. Make a merge to master on the dummy repo
1. On a connected Alexa device, say `Alexa Speakeasy Messages`


## Project Repositories and Deployment Links  
**Dummy repo for merges:**
* Heroku: https://quiet-basin-56396.herokuapp.com/
* Github: https://github.com/james-cape/dummy_speakeasy

**Flask webhook api passthrough app:**
* Heroku: https://shielded-mountain-70953.herokuapp.com
* Github: https://github.com/james-cape/speakeasy_webhook_passthrough

**Rails App:**
* Heroku: https://arrogant-loon-34609.herokuapp.com/
* Github: https://github.com/davehardy632/SpeakEasy

**Sinatra Alexa Interpretation app
* Heroku: https://infinite-hollows-79232.herokuapp.com/
* Github: https://github.com/davehardy632/SpeakEasy-sinatra

![Speakeasy flow diagram](https://arrogant-loon-34609.herokuapp.com/assets/welcome/flow.png)
