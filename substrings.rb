# substrings.rb
#
require "pry-byebug"

dictionary = %w[
  below
  down
  go
  going
  horn
  how
  howdy
  it
  i
  low
  own
  part
  partner
  sit
]

def subs(string, dict)
  string.downcase!
  str_array = string.split().to_a

  wf =
    Hash
      .new(0)
      .tap do |h|
        str_array.each do |word|
          dict.each { |dword| h[dword] += 1 if word.include?(dword) }
        end
      end
end

wf2 = subs("Howdy partner, sit down! How's it going?", dictionary)
puts wf2
