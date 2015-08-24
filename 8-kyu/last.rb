def last *args
	args.last      # => "abc", [1, 2, 3, 4, 5], 5
end



last "abc"          # => "abc"
last [1,2,3,4,5]    # => [1, 2, 3, 4, 5]
last(1, 2, 3, 4, 5)  # => 5
