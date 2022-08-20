# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating Questions'
questions = Question.create([
  {
    title: 'How to check if a key is present in Hash?',
    tag: 'Ruby'
  },
  {
    title: 'What is the difference between string and symbol?',
    tag: 'Ruby'
  },
  {
    title: 'What happened if you add two same keys in Hash?',
    tag: 'Ruby'
  },
  {
    title: 'How to delete a given key from hash?',
    tag: 'Ruby'
  },
  {
    title: 'How to check if two hash are identical?',
    tag: 'Ruby'
  },
  {
    title: 'How to combine two hash are identical?',
    tag: 'Ruby'
  },
  {
    title: 'How to get unique keys from two hashes in Ruby?',
    tag: 'Ruby'
  },
  {
    title: 'What does the has_key?, key?, member? and include? methods in a hash?',
    tag: 'Ruby'
  },
  {
    title: 'What are blocks in Ruby?',
    tag: 'Ruby'
  },
  {
    title: 'Does the order of keys matters to compare two hashes?',
    tag: 'Ruby'
  },
  {
    title: 'What is the difference between save and save! methods?',
    tag: 'Rails'
  }, 
  {
    title: 'What is the difference between render and redirect?',
    tag: 'Rails'
  }, 
  {
    title: 'What is the difference between delete and destroy?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between class and functional components in React?',
    tag: 'React'
  },
  {
    title: 'What is the key property in React?',
    tag: 'React'
  },
  {
    title: 'What is render method in react class component?',
    tag: 'React'
  },
  {
    title: 'What are hooks in React?',
    tag: 'React'
  },
  {
    title: 'What is useState in React?',
    tag: 'React'
  },
  {
    title: 'What is createRoot method in React?',
    tag: 'React'
  }, 
  {
    title: 'What is the difference between has_many :through and has_and_belongs_to_many? Also state which one is better?',
    tag: 'Rails'
  }, 
  {
    title: "What are validations in rails? At what moments of an object's lifecycle validations are checked?",
    tag: 'Rails'
  },
  {
    title: 'What do you mean by polymorphic association in rails? When can one use this association?',
    tag: 'Rails'
  },
  {
    title: 'What are scopes in Rails?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between class methods and scopes? Are they similar?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by ActiveRecord callbacks? Explain some ActiveRecord callbacks.',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by ActiveRecord callbacks? Explain some ActiveRecord callbacks.',
    tag: 'Rails'
  },
  {
    title: 'How can you define custom validations in rails?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by STI(single table inheritance)? What are its advantages and disadvantages?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by migrations in Rails? What is the usage of rails migrations?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by N+1 query? How can you resolve N+1 query? Explain by an example.',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between includes and joins?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by self_join association in Rails?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by ORM? Explain.',
    tag: 'Rails'
  },
  {
    title: 'Is it possible to change the convention of naming a table in rails? If yes, how will you do this? Please explain.',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by Rolling back a migration? How can you rollback a specific migration?',
    tag: 'Rails'
  },
  {
    title: 'What are the Relational and Conditional callbacks in ActiveRecord? Explain them.',
    tag: 'Rails'
  },
  {
    title: 'What are transactional callbacks? Explain them.',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by member and collection routes? Explain.',
    tag: 'Rails'
  },
  {
    title: 'What do you know about namespace and scoped routing? What is the difference between both?',
    tag: 'Rails'
  },
  {
    title: 'Explain the difference between webpacker and sprockets.',
    tag: 'Rails'
  },
  {
    title: 'How many types of associations are in rails?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by partials in Rails? Explain the usage of partials and the way we can pass local variables to a partial.',
    tag: 'Rails'
  },
  {
    title: 'What are delegates in Rails? Explain usage of delegates.',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by helper classes? Explain.',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by mailers? How many ways to pass arguments to a mailer?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by concerns in Rails? Explain the way of using a concern.',
    tag: 'Rails'
  },
  {
    title: 'Have you ever used sidekiq? Explain how it works in both production and development environments?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between a sidekiq worker and rails ActiveJob?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by rake tasks? How can you define/implement custom rake tasks?',
    tag: 'Rails'
  },
  {
    title: 'Do you know about ActiveStorage? How can you use this?',
    tag: 'Rails'
  },
  {
    title: 'Explain strong parameters.',
    tag: 'Rails'
  },
  {
    title: 'How do you pass default arguments to a controller action where you instantiate a new model object?',
    tag: 'Rails'
  },
  {
    title: 'What are turbolinks into rails?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by API versioning in Rails? Explain when there is a need to change the version of an API?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between before_save, before_create and before_update?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by asset pipeline?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by default_scope? Please explain.',
    tag: 'Rails'
  },
  {
    title: 'Explain routing in rails.',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by filter actions or controller callbacks? Explain.',
    tag: 'Rails'
  },
  {
    title: 'How can you handle ActiveRecord::RecordNotFound exception for all resources?',
    tag: 'Rails'
  },
  {
    title: 'How many gems for the admin backend have you used? Which gem is better and why?',
    tag: 'Rails'
  },
  {
    title: 'You are asked to implement an admin backend for a web application. What solution will you propose? Any gem or custom admin panel? Also explain the reason.',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between save and save!?',
    tag: 'Rails'
  },
  {
    title: 'How can you pass params to a mailer action?',
    tag: 'Rails'
  },
  {
    title: 'Is it possible to replace the schema.rb file in Rails? If yes, how can you do this?',
    tag: 'Rails'
  },
  {
    title: 'What is ActionCable? Explain.',
    tag: 'Rails'
  },
  {
    title: 'How can you implement user authentication using devise and JWT? Explain the process of it.',
    tag: 'Rails'
  },
  {
    title: 'How many form helpers are provided by rails? Tell the names and differences between them.',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between delete and destroy in Rails?',
    tag: 'Rails'
  },
  {
    title: 'How do you organize your controllers? Tell me about the way that you can make a controller thin.',
    tag: 'Rails'
  },
  {
    title: 'How do you organize your controllers? Tell me about the way that you can make a controller thin.',
    tag: 'Rails'
  },
  {
    title: 'What is the find_each method in Rails? Also explain why the .all method is not ideal to use for loading all the instances of a model at once?',
    tag: 'Rails'
  },
  {
    title: 'What is polymorphic association in Rails? When should you actually use a polymorphic association?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between eager_load and includes methods? And which one is better?',
    tag: 'Rails'
  },
  {
    title: 'Which of the methods is faster between delete and destroy? Explain why?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between ActiveModel and ActiveRecord?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between dependent: :destroy and dependent: :delete_all?',
    tag: 'Rails'
  },
  {
    title: 'What is yield in Ruby? What happens if you call the method, which includes yield, without passing a block?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between Hash and HashWithIndifferentAccess?',
    tag: 'Rails'
  },
  {
    title: 'In Ruby, how many ways to invoke a method? Illustrate with examples.',
    tag: 'Rails'
  },
  {
    title: 'In Ruby, what is the difference between Strings and Symbols? Explain.',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by schema versioning in Rails? When does it change?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by reversible migrations?',
    tag: 'Rails'
  },
  {
    title: 'How can you run/rollback any specific migration in Rails?',
    tag: 'Rails'
  },
  {
    title: 'When should you use an up and down method instead of a change method inside your migration? Explain by an example.',
    tag: 'Rails'
  },
  {
    title: 'What is shallow nesting of routes and when is preferable to use this?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by meta Programming in Ruby? Explain how you can implement this in your program?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by inject method in Ruby?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between equal? and eql? method in Ruby?',
    tag: 'Rails'
  },
  {
    title: 'What is the advantage of using hash over an array in Ruby?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between iterators and loops in Ruby?',
    tag: 'Rails'
  },
  {
    title: 'What are accessor methods in Ruby? List and explain accessor methods.',
    tag: 'Rails'
  },
  {
    title: 'What are class level and module level attributes?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between include and extend in rails?',
    tag: 'Rails'
  },
  {
    title: 'How many template engines are supported by Rails? Which one is your preference and why?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by singleton (Eigen) class in Ruby?',
    tag: 'Rails'
  },
  {
    title: 'When do you think is the right time to define a helper method inside a controller in Rails?',
    tag: 'Rails'
  },
  {
    title: 'What is your understanding of DRY code? Explain.',
    tag: 'Rails'
  },
  {
    title: 'What is your approach to write a thin controller? Also explain why a controller should be thin and what are the advantages of it?',
    tag: 'Rails'
  },
  {
    title: 'What is the purpose of initializers directory in a rails project?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between a gem and Rails engine?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by a rails engine? Explain when we need to use a rails engine? Also if you know, list a few gems which are engines as well.',
    tag: 'Rails'
  },
  {
    title: 'Is it possible to use two identical keys in a hash? What happens if you use two identical keys in a hash?',
    tag: 'Rails'
  },
  {
    title: 'What is the best way to define a foreign key into an existing table in rails?',
    tag: 'Rails'
  },
  {
    title: 'How many rails versions have you worked with? Also list the changes between the rails versions you have worked on.',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between Array and Enumerator?',
    tag: 'Rails'
  },
  {
    title: 'What is your preference for return response for an API? Jbuilder or ActiveModel serializers? And why?',
    tag: 'Rails'
  },
  {
    title: 'What are the differences between lambda and proc?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by argumented scopes? When do you need to write argumented scopes?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between update and update_attribute method?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between :allow_nil and :allow_blank validation options?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by strict and conditional validations?',
    tag: 'Rails'
  },
  {
    title: 'When do you need to skip callbacks? List a few of the methods, by using them you can skip callbacks.',
    tag: 'Rails'
  },
  {
    title: 'Is it possible to send emails without rendering a template in Rails? If yes, how will you do this?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between deliver_now and deliver_later methods for sending emails?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by upsert?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by session storage in Rails? Explain.',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by session hijacking?',
    tag: 'Rails'
  },
  {
    title: 'What are the main features of the asset pipeline in Rails?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by page caching, action caching and fragment caching?',
    tag: 'Rails'
  },
  {
    title: 'Why does ruby not support method overloading?',
    tag: 'Rails'
  },
  {
    title: 'What are modules in Ruby? How can you differentiate class and instance methods in a module?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between after_save and after_commit?',
    tag: 'Rails'
  },
  {
    title: 'What are mixins in Ruby?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by the send method in Ruby?',
    tag: 'Rails'
  },
  {
    title: 'Have you worked with sidekiq? Why is it used for?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between the basic version of sidekiq and sidekiq pro?',
    tag: 'Rails'
  },
  {
    title: 'What are perform and perform_async methods in sidekiq? What is the difference between them?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between let and let! in RSpec?',
    tag: 'Rails'
  },
  {
    title: 'What are the callbacks? Explain for both the model and controller.',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between uniq and distinct in rails?',
    tag: 'Rails'
  },
  {
    title: 'In rails how you will get objects with at least one child?',
    tag: 'Rails'
  },
  {
    title: 'In what cases the change method is not reversible in a Rails migration?',
    tag: 'Rails'
  },
  {
    title: 'What happens if you do not provide the column type in the remove_column migration?',
    tag: 'Rails'
  },
  {
    title: 'What happens if you rollback a change_column migration within the change method?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between preload and includes?',
    tag: 'Rails'
  },
  {
    title: 'How many ways to eager loading the associations?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by content_for in Rails?',
    tag: 'Rails'
  },
  {
    title: 'What do you mean by sanitizing params in Rails?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between render and redirect in Rails?',
    tag: 'Rails'
  },
  {
    title: 'What is the difference between module and concerns in Rails?',
    tag: 'Rails'
  }
])
puts 'Questions Created'