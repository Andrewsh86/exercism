class BeerSong

  def verse n
    ret_verse = "#{get_n_or_no_more(n).to_s.capitalize} bottle#{get_plural(n)} of beer on the wall, #{get_n_or_no_more(n)} bottle#{get_plural(n)} of beer.\n" \

    ret_verse += n > 0 ? "Take #{get_one_or_it(n)} down and pass it around, #{get_n_or_no_more(n-1)} bottle#{get_plural(n-1)} of beer on the wall.\n" :
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    ret_verse
  end

  def verses start, finish
    start.downto(finish).map { |n| verse(n) }.join("\n")
  end

  def lyrics
    verses(99, 0)
  end

  def get_plural n
    n != 1 ? 's' : ''
  end

  def get_one_or_it n
    n != 1 ? 'one' : 'it'
  end

  def get_n_or_no_more n
    n > 0 ? n : 'no more'
  end

end

module BookKeeping
  VERSION = 2
end
