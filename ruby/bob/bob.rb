class Bob

  def hey msg
    return 'Fine. Be that way!' if msg.strip.length == 0
    return 'Whoa, chill out!' if msg.gsub(/[\W\d]/, '') =~ /^[A-Z]+$/
    return 'Sure.' if msg.chars.last == '?'
    'Whatever.'
  end

end
