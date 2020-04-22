# TOP_Ruby
My exercise solutions for [The Odin Project's](www.theodinproject.com/) Ruby Course

## Caesar Cipher
"A substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B etc."

For my solution a class called *CaesarCipher* was created containing two methods, *encrypt* and *decrypt*. 
For each character in the word, *map* is used. [*ord*](https://apidock.com/rails/String/ord) is used which returns the codepoint of the first character of the string i.e. "a".ord returns 97, "A".ord returns 65. If the codepoint of the character is between 97 and 122 (a-z) or 65 and 90 (A-Z) it is shifted and changed back into a character, else the same letter is returned (punctuation etc.). The characters are all joined together and then returned from the encrypt method. 
The decrypt method works similarly, however the shift is turned negative so that the characters are shifted backwards.


## SubStrings
"Implement a method that takes a word as the first argument and then an array of valid substrings (a dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found. Make sure your method can handle multiple words"

Firstly, an empty hash called *string_counts* was created which is the hash that will eventually be returned at the end of the method. For each string in the string_array, the word given is changed to lowercase and checked whether it exists in the string_array (dictionary). If it is found to exist in the dictionary, the count is saved into the variable *count* and the word and its corresponding count is added to the *string_counts* hash. Each word given is checked and then the final hash is returned at the end of the method.

## Stock Picker
"Implement a method that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0. Note that you need to buy before you sell and pay attention to edge cases i.e. where the lowest day is the last day or the highest day is the first day"

First I created the variable *selling_margin* and saved into it the value of the range of the array (min-max) and created an empty array called *best_days_to_buy_sell*. I used the [combination](https://apidock.com/ruby/Array/combination) array method with a value of 2, which yields all combinations of length 2 from the array (i.e. every possible pair of values). I think used an if loop to check whether the x[1]-x[0] from the 'pair of values' was larger than the selling margin. If it was larger, then selling margin was set to that value (x[1]-x[0]) and those values were added to the *best_days_to_sell* array. If the x[1]-x[0] value wasn't larger than the selling margin then it is skipped and the next pair of values is looked at. The array of best days to buy and sell is then returned. (By doing x[1]-x[0] it's made sure that the item is bought before it is sold)


## Bubble Sort
Sorting algorithms are some of the earliest that you typically get exposed to in CS. It may not be immediately obvious how important they are, but it shoudn't be hard to think of some examples where your computer needs to sort some massive datasets during everyday operations.

One of the simpler (but more processor-intensive) ways of sorting a group of items in an array is a bubble sort, where each element is compared to the one next to it and they are swapped if the one on the left is larger than the one on the right. This continues until the array is eventually sorted.

"Build a method bubble_sort that takes an array and returns a sorted array using bubble sort methodology"

This solution takes input from the command line, asking for a list of numbers separated by a single space, each number in the array is then mapped to be an integer number and then used as a parameter for the bubble_sort method. Firstly the value of *swap* is set to be -1. While this value isn't 0, a for loop os used to check whether the value of index 1 is more than the value of index 2. If it is, then the values swap indexes (i.e. the larger value is pushed to the right) and the swap value is increased by 1. This is done all the way through the array from 'left' to 'right'. The process is then started again until every value is in order.

# Intermediate Ruby

## Tic-Tac-Toe 
I used [this](https://repl.it/@rryand/tictactoeruby) student solution for help
The program is run from the *main.rb* file. The *lib/game* files are imported and a new instantiation of the *Game* class is created and saved into the name *tic_tac_toe*, the class method *start* is then run on the game object. 

The game object is initialized with an empty *players* hash and an empty *scores* hash. There is also a padding variable with a value of 50. 
The public methods in the Game class are -
- start
- get_player_names

The private methods in the Game class are -
- player_choice
- mark_tile
- play_turn
- invalid?(tile)
- victory?(mark, turn)
- show_score

The *start* method sets the default play value to true and a welcome message is displayed along with an explanation of which player is which symbol ('o' or 'x'). The *get_player_names* is run which takes a default value of an empty array. Both players are prompted to enter their name and then player 1 is assigned 'o' as their *mark* and player 2 is assigned 'x'. The instance variable *players* is updated to hold their name and their player number. 

After this 'set-up' section of the game, a Board object is created from the Board class. attr_reader is used to set the variables :tiles and :winning_tiles to accessible (i.e. read-only). The tiles are labelled 1 through 9 and an array of winning combinations of tiles (i.e. 3 in a row) are saved to the instance variable *winning_tiles*. 9 'turns' are then given, with a label showing what turn the player is on and setting the mark for the player. *play_turn* is then run using the user's mark. The board is drawn which shows an empty board with numbers 1-9 on it. 

The return value of *player_choice(player)* is saved into the *tile* variable; if the user enters a number other than 0-9 then an error message shows that it is invalid. This process is continued until *victory*. Victory is true if the group of tiles marked is in the *winning_tiles* array. If victory is true, the player's name is shown in the winning message "Amy wins!" etc. Else, if there is no victory and there has been 9 turns, then the message "It's a draw!" is shown. 

*show_score* is used to show the scores for each player.

The user is prompted whether they would like a rematch and if the user enters 'y' the game is played again.

