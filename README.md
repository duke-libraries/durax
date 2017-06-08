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
- Copy `config/role_map.yml.sample` to `config/role_map.yml`.
- In a separate window, run `rake hydra:server`.  (This starts up Fedora, Solr, and the durax application.  To stop these processes, use CTRL-C or whatever the equivalent command is on your workstation.)
- Run `rake hyrax:default_admin_set:create`.  (This creates a default administrative set in the Fedora repository.  This must be done while Fedora is running ... see step above.)

## Admin User

Once you have created an account in your local development Durax application, you can make yourself an admin user:

Edit the `config/role_map.yml` file.  In the `development:` section, under `admin:`, add entry for the username of the account you created, as I have done for `tom@duke.edu` in the example below.
```yaml
development:
  admin:
    - admin@duke.edu
    - tom@duke.edu
  archivist:
    - archivist1@example.com
```
Save the `config/role_map.yml` file and restart your `hydra:server`.

Alternatively, if you would like to sometimes be an admin user and sometimes not, you can create a second account and add it to the `config/role_map.yml` file instead of your "regular" account.  Or, you can create an account named `admin@duke.edu`, which has already been added as an admin user to the `config/role_map.yml` file.
