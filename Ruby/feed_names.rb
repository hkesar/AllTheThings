require 'yaml'
# def build_feed_list (directory)
# 	puts directory
# 	feed_name = Dir[directory + '/cip-*-feeds/config/feeds/*_2_2.yml']
# 	return feed_name
# end
# #puts feed_name.length
# yml_sub_string = '_2_2.yml'
# #public_sub_string = '/Users/hkesar/LG/git/cip-public-feeds/config/feeds/'
# #private_sub_string = directory + 'cip-private-feeds/config/feeds/'
# i = 0
# => puts feed_name[10]

# #while i <= feed_name.length
# puts feed_name[i]
# feed_name[i].slice! private_sub_string
# feed_name[i].slice! public_sub_string
# feed_name[i].slice! yml_sub_string
# puts feed_name[i]
# i+=1
# end
# directory=''
# feed_name=''
class GetFeed

  def self.build_feed_list(feed_dir)
    feed_config_dir = feed_dir + '/cip-*-feeds/config/feeds/*.yml'

    feed_list_file = File.new(feed_dir + '/feed_list.txt', "w+")
    feed_list_file.write ('FEED_LIST =\\')
    feed_list_file.write "\n"

    self.new.sorted_feed_configs(feed_config_dir).each do |feed_path|
#if  !/\_2\_2/.match(feed_path)
      feed_config = YAML.load_file (feed_path)
      if feed_config['enabled'] == true
        feed_name  = File.basename(feed_path)
        feed_list_file.write (feed_name + ' \\')
        feed_list_file.write "\n"
      end
end
#end
    feed_list_file.write "\n"
    feed_list_file.close
  end

  def sorted_feed_configs(dir_to_sort)
    Dir[dir_to_sort].sort!
  end

end
GetFeed.build_feed_list(ARGV[0])
