# Durax

Durax is a Hyrax-based repository application for the Duke University Libraries.

## Prerequisites

See the "Getting started" section of the README at https://github.com/samvera-labs/hyrax .  For development purposes, you can ignore the prerequisites related to Fedora, Solr, and the SQL RDMS -- development/testing instances of Fedora and Solr are provided and SQLite can be used as the database.

## Setup

- Clone this repo.
- If using `rvm`, you may want to create a separate gemset for this app.  If you do so, you can add a `.ruby-gemset` to the app directory to automatically select that gemset when you enter the directory.
- Run `bundle install`.
- Run `rake db:setup`.
- Run `rake hyrax:workflow:load`.  (This loads the default workflows into the application database.)
- In a separate window, run `rake hydra:server`.  (This starts up Fedora, Solr, and the durax application.  To stop these processes, use CTRL-C or whatever the equivalent command is on your workstation.)
- Run `rake hyrax:default_admin_set:create`.  (This creates a default administrative set in the Fedora repository.  This must be done while Fedora is running ... see step above.)

