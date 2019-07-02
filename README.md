# Active Record CRUD

## Objective

The goal of this exercise is to get comfortable performing CRUD (Create, Read,
Update, Delete) actions using Active Record.

There are different ways to solve this exercise so feel free to experiment!

### Create Table

Try using the rake task `rake db:new_migration[create_movies]` to create
your migration file. Once you have a migration file add columns like so:

|Column Name|Type|
|----|-----------|
|`title`|\(string\)|
|`release_date`|\(integer\)|
|`director`|\(string\)|
|`lead`|\(string\)|
|`in_theaters`|\(boolean\)|

After your migration is ready run `rake db:migrate` to
migrate your table and `rake db:migrate` to migrate a test
database.

### Tests

Run `rspec` to see the tests. To make them pass open
`movie_controller.rb` and complete each method. It will help to open
`spec/models/movie_spec.rb` to see exactly what each spec is testing for.

In each method the `__` corresponds to a line of code you will need to write to
make the spec pass.

Each test will take us through performing a basic CRUD action using the database
we just created. These tests will take you through:

#### Create

- A movie can be instantiated, given a title, and saved
- A movie can be instantiated with a hash containing all of its attributes
- A movie can be created in a block

#### Read

- You can return the first item in the table
- You can return the last item in the table
- You can return the number of records in the table
- You can return a movie from the table based on its attributes
- You can use a `where` clause to select the appropriate movies and sort them by
  release date

#### Update

- Can be found, updated, and saved
- Can be updated using the `update` method
- Can update all records at once

#### Destroy

- Can destroy a single item
- Can destroy all items at once

## Resources

[Active Record Query Interface](http://guides.rubyonrails.org/active_record_querying.html).

