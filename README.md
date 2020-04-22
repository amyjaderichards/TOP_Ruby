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

