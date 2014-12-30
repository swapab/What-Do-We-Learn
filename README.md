What-Do-We-Learn
================

Rake with arguments
```ruby
desc 'an updated version'
task :task_name, [:arg1, :arg2] => [:dependency1, :dependency2] do |t, args|
    puts args[:arg1]
end
```

```ruby
# = instance method

:: = class method
```
