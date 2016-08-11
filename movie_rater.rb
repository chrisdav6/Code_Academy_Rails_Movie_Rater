#Creates Hash of movies using symbols as keys for less memory usage
movies = {
    heat: 5,
    dune: 4,
    Se7en: 5,
}

#Prompt the user
puts "what would you like to do?"

#Store users choice into a variable
choice = gets.chomp

#Ruby case statement
case choice

    #When user types "add"
    when "add"

        #promps the user to select a movie to add
        puts "Please select a movie to add"
        #stores the users movie into a variable
        title = gets.chomp.to_sym
        #prompts the user to enter a rating for this movie
        puts "Please select a rating for #{title}"
        #stores rating into a variable and converts into integer
        rating = gets.chomp.to_i

        #if else, if the movie does not exist, then add it
        #else, if the movie exists, thell the user it already exists
        if movies[title.to_sym] == nil
            movies[title.to_sym] = rating.to_i
        else
            puts "The movie #{title} already exists!"
        end

    #when user types update    
    when "update"

        #prompts the user to select a movie to update
        puts "Select a movie you would like to update"
        #stores the selection in a variable
        title = gets.chomp

        #if else, if the movie does not exist notify the user
        #else prompt the user for a new rating, then set the new value in the hash
        if movies[title.to_sym] == nil
            puts "Sorry, this movie has not yet been added"
        else
            puts "Please enter your new rating"
            rating = gets.chomp.to_i
            movies[title.to_sym] = rating.to_i
        end

    #when user types display
    when "display"

        #use a loop to print all movie keys and values
        movies.each do |movie, rating|
            puts "#{movie}: #{rating}"
        end

    #when user types delete
    when "delete"

        #prompt the user to select a movie to delete
        puts "What movie would you like to delete?"
        #store the title into a variable
        title = gets.chomp.to_sym

        #if else, if the movie does not exist notify the user
        #else, delete the movie
        if movies[title.to_sym] == nil
            puts "Sorry, this movie has not yet been added"
        else
            movies.delete(title)
        end

    #when user types something other than the case options, print error
    else
        puts "Error!"
end