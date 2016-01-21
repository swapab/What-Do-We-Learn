Thread.new do
  while true
    pid = Process.pid
    p "\n From Initializer ----Loggin Process.pid : #{pid}"
    begin
      system("rbtrace -p #{pid} -e 'Thread.new{require \"objspace\"; ObjectSpace.trace_object_allocations_start; GC.start(); ObjectSpace.dump_all(output: File.open(\"#{Rails.root.to_s}/tmp/dump/heap_dump_#{pid}_#{Time.now.to_formatted_s(:db).gsub(' ', '-')}.json\", \"w\"))}.join'")
    rescue Exception => error
      puts "HEAP-DUMP-FAILED : #{error.class} \n #{error.backtrace.inspect}"
    end
    sleep 60
  end
end
