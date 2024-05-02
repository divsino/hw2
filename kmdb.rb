# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)

# Done, I've created 4 models (Studio, Movie, Actor and Role)
# Ran command rails runner data.rb to see if the tables have all the required columns





# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
Movie.destroy_all
Studio.destroy_all
Actor.destroy_all
Role.destroy_all

#   create duplicate data. (5 points)

Movie.destroy_all
Studio.destroy_all
Actor.destroy_all
Role.destroy_all

studio=Studio.new
studio["Studio"] = "Warner Bros."
studio.save

warner_bros = Studio.find_by({"Studio" => "Warner Bros."})

movie_new = Movie.new
movie_new ["title"] = "Batman Begins"
movie_new["year_released"] = 2005
movie_new["rated"] = "PG-13"
movie_new["studio_id"] = warner_bros.id
movie_new.save

movie_new = Movie.new
movie_new ["title"] = "The Dark Knight"
movie_new["year_released"] = 2008
movie_new["rated"] = "PG-13"
movie_new["studio_id"] = warner_bros.id
movie_new.save

movie_new = Movie.new
movie_new ["title"] = "The Dark Knight Rises"
movie_new["year_released"] = 2012
movie_new["rated"] = "PG-13"
movie_new["studio_id"] = warner_bros.id
movie_new.save

Actor.destroy_all

actor=Actor.new
actor["name"] = "Christian Bale"
actor.save
actor=Actor.new
actor["name"] = "Michael Caine"
actor.save
actor=Actor.new
actor["name"] = "Liam Neeson"
actor.save
actor=Actor.new
actor["name"] = "Michael Caine"
actor.save
actor=Actor.new
actor["name"] = "Katie Holmes"
actor.save
actor=Actor.new
actor["name"] = "Gary Oldman"
actor.save
actor=Actor.new
actor["name"] = "Aaron Eckhart"
actor.save
actor=Actor.new
actor["name"] = "Maggie Gyllenhaal"
actor.save
actor=Actor.new
actor["name"] = "Heath Ledger"
actor.save
actor=Actor.new
actor["name"] = "Tom Hardy"
actor.save
actor=Actor.new
actor["name"] = "Anne Hathaway"
actor.save
actor=Actor.new
actor["name"] = "Joseph Gordon-Levitt"
actor.save

batman_begins = Movie.find_by(title: "Batman Begins")
the_dark_knight = Movie.find_by(title: "The Dark Knight")
the_dark_knight_rises = Movie.find_by(title: "The Dark Knight Rises")


tom_hardy = Actor.find_by(name: "Tom Hardy")
joseph_gordon_levitt = Actor.find_by(name: "Joseph Gordon-Levitt")
anne_hathaway = Actor.find_by(name: "Anne Hathaway")
christian_bale = Actor.find_by(name: "Christian Bale")
michael_caine = Actor.find_by(name: "Michael Caine")
katie_holmes = Actor.find_by(name: "Katie Holmes")
aaron_eckhart = Actor.find_by(name: "Aaron Eckhart")
maggie_gyllenhaal = Actor.find_by(name: "Maggie Gyllenhaal")
gary_oldman = Actor.find_by(name: "Gary Oldman")
heath_ledger = Actor.find_by(name: "Heath Ledger")
liam_neeson = Actor.find_by(name: "Liam Neeson")

Role.create(movie_id: batman_begins.id, actor_id: christian_bale.id, chracter_name: "Bruce Wayne")
Role.create(movie_id: batman_begins.id, actor_id: michael_caine.id, chracter_name: "Alfred")
Role.create(movie_id: batman_begins.id, actor_id: liam_neeson.id, chracter_name: "Ra's Al Ghul")
Role.create(movie_id: batman_begins.id, actor_id: katie_holmes.id, chracter_name: "Rachel Dawes")
Role.create(movie_id: batman_begins.id, actor_id: gary_oldman.id, chracter_name: "Commissioner Gordon")

Role.create(movie_id: the_dark_knight.id, actor_id: christian_bale.id, chracter_name: "Bruce Wayne")
Role.create(movie_id: the_dark_knight.id, actor_id: heath_ledger.id, chracter_name: "Joker")
Role.create(movie_id: the_dark_knight.id, actor_id: aaron_eckhart.id, chracter_name: "Harvey Dent")
Role.create(movie_id: the_dark_knight.id, actor_id: michael_caine.id, chracter_name: "Alfred")
Role.create(movie_id: the_dark_knight.id, actor_id: maggie_gyllenhaal.id, chracter_name: "Rachel Dawes")

Role.create(movie_id: the_dark_knight_rises.id, actor_id: christian_bale.id, chracter_name: "Bruce Wayne")
Role.create(movie_id: the_dark_knight_rises.id, actor_id: gary_oldman.id, chracter_name: "Commissioner Gordon")
Role.create(movie_id: the_dark_knight_rises.id, actor_id: tom_hardy.id, chracter_name: "Bane")
Role.create(movie_id: the_dark_knight_rises.id, actor_id: joseph_gordon_levitt.id, chracter_name: "John Blake")
Role.create(movie_id: the_dark_knight_rises.id, actor_id: anne_hathaway.id, chracter_name: "Selina Kyle")


# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

movies = Movie.all

for mo in movies
    studio = Studio.find_by(id: mo.studio_id)
    puts "#{mo.title} #{mo.year_released} #{mo.rated} #{studio["name"]}"
end


# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

roles = Role.all

for ro in roles
    movies = Movie.find_by(id: ro.movie_id)
    actors = Actor.find_by(id: ro.actor_id)
    puts "#{movies.title}  #{actors.name}  #{ro.chracter_name}" 
end

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
