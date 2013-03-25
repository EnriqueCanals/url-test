require 'open-uri'

failed = []
File.read('File.txt').lines.each do |x| 
  begin
    sleep(1)
    st = Time.now.to_f 
    puts "#{x}: #{open(x).status }"
    et = Time.now.to_f
    puts (et - st)
  rescue
    failed << x
  end
end

File.open('failed.txt', 'w') { |f| f.print failed.join("\n") }