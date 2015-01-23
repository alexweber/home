# Adding this cask manually because of https://github.com/caskroom/homebrew-cask/pull/3954
cask :v1 => 'popcorn-time' do
  version '0.3.7.1'
  sha256 'ef21b6db873ee173883390bfc83204aa28b869ee24545cc0b6706152f46710ed'

  # This is a redirect URL.
  # url 'https://get.popcorntime.io/build/Popcorn-Time-0.3.7.1-Mac.dmg'
  url 'http://popcorn.obsidian.goender.net/build/Popcorn-Time-0.3.7.1-Mac.dmg'
  name 'Popcorn Time'
  homepage 'https://popcorntime.io/'
  license :gpl
  app 'Popcorn-Time.app'
  zap :delete => [
    '~/Library/Application Support/Popcorn-Time'
   ]
end
