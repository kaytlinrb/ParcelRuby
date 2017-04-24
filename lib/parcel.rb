class Parcel
  define_method(:initialize) do |length,width,height,weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  define_method(:cost_to_ship) do
    volume = @length * @width * @height
    cost = 0
    if volume <= 10
      cost += 5
    elsif volume <= 30
      cost += 20
    else volume >30
      cost += 50
    end
    if @weight < 5
      cost += 10
    elsif @weight <= 20
      cost += 20
    else @weight > 20
      cost += 50
    end
    
  end
end
