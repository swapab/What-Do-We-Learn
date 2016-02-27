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

================
### less grep text in a huge file
`grep --color=always -i "95539/7fd36a039700" /var/log/apache2/error.log | less -R`

================
```
Siege
siege -H 'Content-Type: application/json' -g



siege -H 'Content-Type: application/json' 'https://lemoncodes.bingopulse.com/api/login.json' POST "{'ms_request': {"user": {"api_key":"asasasass", "username":"siddhartha@lemoncodes.com", "password":"asasasasasasa" } } }"
```

================
Ruby web server

`ruby -run -e httpd -- -p 5000 .`

http://phrogz.net/simplest-possible-ruby-web-server
