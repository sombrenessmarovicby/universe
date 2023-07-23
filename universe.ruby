class MyClass
  def method_missing(method_name, *args, &block)
    puts "You called #{method_name} with #{args.join(', ')}"
    puts "You also passed a block" if block_given?
  end
end

obj = MyClass.new
obj.hello('world', 'and', 'universe')
