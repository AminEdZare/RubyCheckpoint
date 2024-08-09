require 'json'

class RhymeRecite
    attr_writer :file_name
    attr_reader :rhyme_array

    def initialize(file_name)
        @rhyme_array = JSON.load File.new(file_name)
    end
    
    # recite any poem in the "first phrase, middle content, end phrase" array format
    def recite
        string = ""
        final_array = []
        
        # loop up to the final middle content index
        for i in 0..rhyme_array.length-2 do
            #reset final_string each interation
            final_string = ""

            # checks to see if space is needed to append next phrase or if still on first iteration
            if i == 1
                string = rhyme_array[i]
            elsif i >= 2
                string = rhyme_array[i] + " " + string
            end

            # checks to see if appending middle content is needed or if still on first iteration
            if string == ""
                final_string = rhyme_array[0] + " " + rhyme_array[-1] + "\n"
            else
                final_string = rhyme_array[0] + " " + string + " " + rhyme_array[-1] + "\n"
            end
            
            # save line created in array
            final_array.push(final_string)
        end
        final_array
    end

end

nursery = RhymeRecite.new("Rhyme1.json")
puts nursery.recite

nursery = RhymeRecite.new("Rhyme2.json")
puts nursery.recite

