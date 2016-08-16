class HelloWorld

  def self.hello name=nil
    msg = 'Hello, World!'
    msg.gsub! "World", name if name
    msg
  end

end
