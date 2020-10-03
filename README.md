# NationBuilder Webhook Tags Bug

This is a simple Rails app to demonstrate the bug where a profile's tag data is often out-of-date (i.e. some tags are missing) in NationBuilder's `person_changed` webhook

### Setup Notes

1. Complete the standard Rails configuration process:
    - `bundle install`
    - `rails db:create`
    - `raile db:migrate`

2. Run `rails credentials:edit` and set values for the following two variables:
    - nation_slug
    - nation_token

3. Deploy your version of this app
    - You'll need to add a `RAILS_MASTER_KEY` environment variable (using the value found in your local `config/master.key` file)
    - We're currently running an example here: https://nb-webhook-tags-bug.herokuapp.com

4. Add a `person_changed` webhook in your nation pointing to the `/webhooks/person_changed` path of your new app deployment
    - Webhooks can be created for development nations using the following link structure: https://YOUR_NATION_SLUG.nationbuilder.com/admin/webhooks/new

