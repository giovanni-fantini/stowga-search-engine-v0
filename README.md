Instructions on how to use:

1) Fork the repo
2) Create, migrate and seed the database from the CSV (rails db:create, rails db:migrate, rails db:seed)
3) Serve the app in local (rails s)
4) Visit homepage and apply filters to display relevant results

Notes:
- The search engine is built as a mini Rails app with Geocoder and Bootstrap
- The employed logic is to delegate the filtering concerns directly to ActiveRecord in the model for performance and security while the controller sanitises the parameters and calls the desired filters
- Not much attention has been put on Front-End at all
