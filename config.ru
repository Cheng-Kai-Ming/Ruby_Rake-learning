=begin
  
rescue => exception
  
end
aaa = Proc.new{
  [
    404,
    {"content-Type" => "text/html"},
    ["Hello Ruby"]
  ]
}

run aaa
=end

class Cat
  def call(mary)
    [
      200,
      {"Content-Type" =>"text/html"},
      ["Hello from Cat"]
    ]
    
  end
end

kitty = Cat.new
run kitty