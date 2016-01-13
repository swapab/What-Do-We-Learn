What-Do-We-Learn
================

Rake with arguments
```ruby
desc 'an updated version'
task :task_name, [:arg1, :arg2] => [:dependency1, :dependency2] do |t, args|
    puts args[:arg1]
end
```
* Notation instance method and class method
```ruby
# = instance method

:: = class method
```

================
### List available updates.
```
apt-get --just-print upgrade 2>&1 | perl -ne 'if (/Inst\s([\w,\-,\d,\.,~,:,\+]+)\s\[([\w,\-,\d,\.,~,:,\+]+)\]\s\(([\w,\-,\d,\.,~,‌​:,\+]+)\)? /i) {print "PROGRAM: $1 INSTALLED: $2 AVAILABLE: $3\n"}' | column -s " " -t
```
