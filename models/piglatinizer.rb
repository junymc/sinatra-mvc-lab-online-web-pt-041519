class PigLatinizer
   attr_reader :text

   def initialize(text)
    @text = text.downcase
   end

#    def piglatinize(string)

#    end

   def piglatinize(text)
    words = text.split(' ')
    return_string = ''
    final = ''
    words.each do |word|
        i = 0
    ending = ''
    array = word.split(//)
       if(vowels.include?(array[i]))
            word=array.push('way').join('')
            return_string<<word

        # if word.start_with('a','e','i','o','u')
        #     word + 'way'
        else
            while(!vowels.include?(array[i]))
    
               letter= array.delete_at(i)
               ending << letter

            end
        array.push(ending)
        word=array.push('ay').join('')
        return_string<< word
           
        end
        return return_string
      end
    end


end
