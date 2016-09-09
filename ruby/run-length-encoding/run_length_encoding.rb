require 'pry'
class RunLengthEncoding

  def self.encode input
    chunks = input.chars.chunk_while { |i, j| i == j }
    output = ''
    chunks.each { |chunk| output << "#{chunk.size > 1 ? chunk.size : ''}#{chunk.shift}"}
    output
  end

  def self.decode input
    chunks = input.scan(/(?:\d*)./)
    output = ''
    chunks.each do |chunk|
      count = chunk.scan(/\d+/).first
      count = 1 if count.nil?
      char = chunk.chars.last
      count.to_i.times{ output << char}
    end
    output
  end

end

module BookKeeping
  VERSION = 2
end
