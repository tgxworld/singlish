class Object
  def method_missing(method_name, *args, &block)
    if(method_name =~ /(.*)_(lah|lor|leh|ah|meh|hor|bo?)/)
      $1.chomp!('?')
      send($1, *args, &block)
    end
  end
end
