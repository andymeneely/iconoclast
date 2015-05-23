require 'squib'
require 'game_icons'
require_relative 'squib_helpers'

data = {
  'name' => ['Super Sword', 'Bowie Knife', 'Bone Knife'],
  'icon' => ['broadsword', 'bowie-knife', 'bone-knife'],
}

fg = '#000' # foreground for text and most icons
bg = '#fff' # backgroudn for text and most icons


Squib::Deck.new(cards: data['name'].size,
                layout: %w(hand.yml layout.yml)) do
  background color: bg

  text str: data['name'], layout: :name

  broadsword = GameIcons.get('broadsword').recolor(fg: fg, bg: bg).string

  svg data: broadsword, layout: :art
  svg data: broadsword, layout: :bonus1

  # TODO do the sets.
  # bowie_knife = GameIcons.get('bowie-knife').string
  # svg data: bowie_knife, layout: :set1a

  # svg data: broadsword, layout: :set1b

  # bone_knife = GameIcons.get('bone-knife').string
  # svg data: bone_knife, layout: :set1c

  save format: :png
  save_json cards: cards.size, deck: data, file: 'data/deck.json'
end
