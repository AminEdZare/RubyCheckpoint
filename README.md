# PU Library Ruby Checkpoint Project: RhymeRecite

A class that can recite a provided nursery rhyme called “The House that Jack Built”, or any other poem in the program's format, in regular, semi-random, or fully random ways.

## Description

"RhymeRecite" is a class which takes input from a .JSON file and manipulates its contents using its three methods, recite, semi_random_recite, and random_recite.
* recite: Recites and Concatenates rhyme elements in their default order to create a full poem.

    * **Example**:
    * This is the house that Jack built.
    * This is the malt that lay in the house that Jack built.
    * This is the rat that ate the malt that lay in the house that Jack built.
    * This is the cat that killed the rat that ate the malt that lay in the house that Jack built.
    * etc.

* semi_random_recite: Generates a semi-random version that always ends with the rhyme's last given element, in this case “the house that Jack built.”
    * **Examples**:
    * The dog that worried the house that Jack built.
    * The dog that worried the cow with the crumpled horn that tossed the house that Jack built.
    * The dog that worried the malt that lay in the cow with the crumpled horn that tossed the house that Jack built.
    * The dog that worried the farmer sowing his corn that kept the malt that lay in the cow with the crumpled horn that tossed the house that Jack built.
    * etc.

    or
    * The horse and the hound and the horn that belonged to the house that Jack built.
    * The horse and the hound and the horn that belonged to the cat that killed the house that Jack built.
    * The horse and the hound and the horn that belonged to the man all tattered and torn that kissed the cat that killed the house that Jack built.
    * The horse and the hound and the horn that belonged to the cow with the crumpled horn that tossed the man all tattered and torn that kissed the cat that killed the house that Jack built.
    * etc.
  
* random_recite: Recites the nursery rhyme with all the elements in a random order, but the same random order on each line
  
    * **Example**:
    * The farmer sowing his corn that kept the rat that ate.
    * The farmer sowing his corn that kept the man all tattered and torn that kissed the rat that ate.
    * The farmer sowing his corn that kept the cat that killed the man all tattered and torn that kissed the rat that ate.
    * The farmer sowing his corn that kept the horse and the hound and the horn that belonged to the cat that killed the man all tattered and torn that kissed the rat that ate.
    * etc.

### Dependencies

* RSpec Gem
