class Object
  def method_missing(method_name, *args, &block)
    if(method_name =~ /(.*)_(lah|lor|leh)/)
      send($1, *args, &block)
    end
  end
end

