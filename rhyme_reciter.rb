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

            # checks to see if space is needed to append next phrase or if still on first select
            if i == 1
                string = rhyme_array[i]
            elsif i >= 2
                string = rhyme_array[i] + " " + string
            end

            # checks to see if appending middle content is needed or if still on first iteration
            if string == ""
                final_string = rhyme_array[0].capitalize + " " + rhyme_array[-1] + "." + "\n"
            else
                final_string = rhyme_array[0].capitalize + " " + string + " " + rhyme_array[-1] + "." + "\n"
            end
            
            # save line created in array
            final_array.push(final_string)
        end
        final_array
    end


    def random_recite
        rhyme_array_copy = rhyme_array

        first_phrase = ""
        last_phrase = ""
        random_string = ""

        final_random_array = []

        for i in 0...rhyme_array.length-1 do

            final_random_string = ""

            # chooses a first and last phrase for all lines
            if i == 0
                
                # sequence selects a random phrase and deletes it from array of remaining phrases
                random_phrase = rhyme_array_copy.sample
                rhyme_array_copy.delete(random_phrase)
                first_phrase = random_phrase
                first_phrase = first_phrase.capitalize

                random_phrase = rhyme_array_copy.sample
                rhyme_array_copy.delete(random_phrase)
                last_phrase = random_phrase
            end

            # checks to see if appending of string is needed while generating next random phrase
            if i == 1
                random_string = rhyme_array_copy.sample
                rhyme_array_copy.delete(random_string)

            elsif i >= 2
                random_phrase = rhyme_array_copy.sample
                rhyme_array_copy.delete(random_phrase)
                random_string = random_phrase + " " + random_string
            end

            # checks to see if appending middle content is needed or if still on first iteration
            if random_string == ""
                final_random_string = first_phrase + " " + last_phrase + "." +"\n"
            else
                final_random_string = first_phrase + " " + random_string+ " " + last_phrase + "." "\n"
            end
            
            # save line created in array
            final_random_array.push(final_random_string)
        end
        final_random_array
    end

    def semi_random_recite
        rhyme_array_copy = rhyme_array

        first_phrase = ""
        last_phrase = ""
        random_string = ""

        final_random_array = []

        for i in 0...rhyme_array.length-1 do

            final_random_string = ""
            
            if i == 0
                # defines a predetermined last_phrase, along with a random beginning first_phrase
                last_phrase = rhyme_array_copy[-1]
                rhyme_array_copy.delete(last_phrase)

                random_phrase = rhyme_array_copy.sample
                rhyme_array_copy.delete(random_phrase)
                first_phrase = random_phrase
                first_phrase = first_phrase.capitalize
            end

            # checks to see if appending of string is needed while generating next random phrase
            if i == 1
                random_string = rhyme_array_copy.sample
                rhyme_array_copy.delete(random_string)

            elsif i >= 2
                random_phrase = rhyme_array_copy.sample
                rhyme_array_copy.delete(random_phrase)
                random_string = random_phrase + " " + random_string
            end

            # checks to see if appending middle content is needed or if still on first iteration
            if random_string == ""
                final_random_string = first_phrase + " " + last_phrase + "." +"\n"
            else
                final_random_string = first_phrase + " " + random_string+ " " + last_phrase + "." "\n"
            end
            
            # save line created in array
            final_random_array.push(final_random_string)
        end
        final_random_array
    end
end