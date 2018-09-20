class BuildIp
  def build_ipv6_list

    ip_write_file = File.new("/Users/hkesar/Dropbox/Docs/Himanshu/Ruby/ipv6_only.txt", "w")
    ip_open_file = File.open('/Users/hkesar/Dropbox/Docs/Himanshu/Ruby/IPv6.txt')
    ip_open_file.each do |line|
      if /assert.ipv6/.match(line)
        #line.slice! "assert.ipv6("
        ip_write_file.puts (line)
       #ip_write_file.puts (line.slice! "assert.not_ipv6(")
      end
   end
    ip_write_file.close
  end
self
end.new.build_ipv6_list
