require 'squib'
require 'game_icons'

Squib::Deck.new(layout: %w(hand.yml layout.yml)) do
  background color: :white
  text str: 'Super Sword', layout: :name
  broadsword = GameIcons.get('broadsword').recolor(fg: '#000', bg: '#fff').string

  svg data: broadsword, layout: :art
  svg data: broadsword, layout: :bonus1

  bowie_knife = GameIcons.get('bowie-knife').string
  svg data: bowie_knife, layout: :set1a

  svg data: broadsword, layout: :set1b

  bone_knife = GameIcons.get('bone-knife').string
  svg data: bone_knife, layout: :set1c

  save format: :png
end
