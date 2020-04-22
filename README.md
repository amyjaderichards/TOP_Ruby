# TOP_Ruby
My exercise solutions for [The Odin Project's](www.theodinproject.com/) Ruby Course

## Caesar Cipher
"A substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B etc."

For my solution a class called *CaesarCipher* was created containing two methods, *encrypt* and *decrypt*. 
For each character in the word, *map* is used. [*ord*](https://apidock.com/rails/String/ord) is used which returns the codepoint of the first character of the string i.e. "a".ord returns 97, "A".ord returns 65. If the codepoint of the character is between 97 and 122 (a-z) or 65 and 90 (A-Z) it is shifted and changed back into a character, else the same letter is returned (punctuation etc.). The character are all joined together and then returned from the encrypt method. 
The decrypt method works similarly, however the shift is turned negative so that the characters are shifted backwards.
