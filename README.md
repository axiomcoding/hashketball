# hashketball
The goal of this challenge lab is to become familiar with navigating and iterating through nested data structures!
## instructions
You're headed to catch the Phoenix Suns play the Golden State Warriors! News got out that you are a seasoned programmer with some data skills, so now it is your job to track the stats at the game.

### part 1: understand the hash
The first pre-made method is called `game_hash`. This method contains and returns a hash nested in the following manner:

* The top level of the hash has two keys: `:home`, for the home team, and `:away`, for the away team.
* The values of the `:home` and `:away` keys are hashes. These hashes have the following keys:
  * `:team_name`
  * `:colors`
  * `:players`
* The `:team_name` key points to a string of the team name.
* The `:colors` key points to an array of strings that are that team's colors.
* The `:players` key points to a hash of players whose names (as strings) are the keys to a hash containing their stats. The values for each player's names and their stats can be found in the table below. The stats keys should be formatted like this:
    * `:number`
    * `:shoe`
    * `:points`
    * `:rebounds`
    * `:assists`
    * `:steals`
    * `:blocks`



### step 2: building methods

### calling methods within methods

You'll be building a series of methods that operate on the above game hash to return certain information about the teams and players. Each method will operate on the game hash by calling the `game_hash` method that returns the `game_hash` hash. In other words, since our `game_hash` method returns our hash, you can think of the `game_hash` like a variable that returns the hash to our hash and operate on it just as you would with hashes in previous lessons.

For example, let's say we want to build a method, `away_team_name`, that returns the name of the home team, `"Golden State Warriors"`. We can call the method `game_hash` inside of our `away_team_name` method and operate on the game_hash:

```ruby
def away_team_name
  game_hash[:away][:team_name]
end

home_team_name
#=> "Golden State Warriors"
```

Now that we understand how we are going to operate on the `game_hash` inside of the methods we're building, let's build those methods:

### iterating through nested levels:
This lab requires us to iterate through the many levels of our nested hash. Every time you iterate into a new level of the hash, think critically about where you are in the hash level. 

Let's take a look at an example:

```ruby
def nested_iteration
  game_hash.each do |location, team_stats|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? 
      team_stats.each do |attribute, team_data|
        #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? 
        #what is 'team_data' at each loop throughout the .each block? when will the following line of code work and when will it break?
        puts data
        # if we went another level deep, our code would break because we would run into data items that are strings such as "Golden State Warriors" and "Phoenix Suns"
    end
  end
end
```
Hint: Using `puts` and running the Ruby file can help you print out the current level of the hash you are working with and will confirm what a specific iterator is and if it is what you expected.  
Hint: Pay close attention to the number of `end`'s you need. It is best practive to include the end as soon as you define a method or include a `do` statement.  

Open up the `hashketball.rb` file and copy and paste the above method. Then, beneath the `end` that closes the method definition, call the method (`nested_iteration`) and, in your terminal, run the file with `ruby hashketball.rb`. You should see all the data for each team printed to your terminal screen.

### method building
Now follow the hasketball.rb instructions and the rspec test specs to build each method and returns the specified data.  

## Resources
* [Codecademy](http://www.codecademy.com/dashboard) - [A Night at the Movies](http://external.codecademy.com/courses/ruby-beginner-en-0i8v1/0/1)  