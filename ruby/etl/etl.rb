class ETL

  def self.transform old
    new = Hash.new

    old.each_pair do |key, values|
      values.each { |value| new[value.downcase] = key}
    end

    new
  end

end
