# ASCII: a=97, z=122, A=65, Z=90

class CaesarCipher
    def self.encrypt(word, shift=0)
        word.chars.map do |letter|
            if (letter.ord >= 97 && letter.ord <= 122)
                ((letter.ord - 97 + shift) % 26 + 97).chr 
            elsif (letter.ord >= 65 && letter.ord <= 90)
                ((letter.ord - 65 + shift) % 26 + 65).chr 
            else
                letter
            end
        end.join()
    end

    def self.decrypt(word, shift)
        encrypt(word, -shift)
    end
end

if $PROGRAM_NAME == __FILE__
    p CaesarCipher.encrypt("hello")
    p CaesarCipher.encrypt("Hello", 3)
    p CaesarCipher.encrypt("Hey, how's it going", 7)
    p CaesarCipher.decrypt("Zrdk vhfuhw phvvdjh!", 3)
end