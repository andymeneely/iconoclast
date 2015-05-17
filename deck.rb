require 'squib'
require 'game_icons'

Squib::Deck.new(layout: %w(hand.yml layout.yml)) do
  background color: :white
  text str: 'Super Sword', layout: :name
  broadsword = GameIcons.get('broadsword').recolor(fg: '#000', bg: '#fff').string
  svg data: broadsword, layout: :art
  svg data: broadsword, layout: :bonus1
  save format: :png
end
