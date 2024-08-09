require 'rspec'
require_relative '../rhyme_reciter.rb'

describe RhymeRecite do
    let(:test_recite) {RhymeRecite.new("Rhyme1.json")}
    it "tests Rhyme1 class recitation vs Ryhme1 expected recitation" do
        expect(test_recite.recite).to eq(["This is the house that Jack built.\n",
        "This is the malt that lay in the house that Jack built.\n",
        "This is the rat that ate the malt that lay in the house that Jack built.\n",
        "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
        "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
        "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
        "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
        "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
        "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
        "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
        "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
        "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"]
        ) 
    end
end