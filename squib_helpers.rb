require 'json'

# Generates a JSON output from deck for easy Git tracking.
def save_json(cards: 1, deck: {}, file: 'deck.json')
  h = {}
  (0..cards-1).each do |i|
    h[i] ||= {}
    deck.each_pair do |key, value|
      h[i][key] = value[i]
    end
  end
  File.open(file,"w") do |f|
    f.write(JSON.pretty_generate(h))
  end
end