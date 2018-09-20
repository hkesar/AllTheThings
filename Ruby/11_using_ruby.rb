feed_name = Dir['/Users/hkesar/LG/git/cip-*-feeds/config/feeds/*_2_2.yml']
#puts feed_name.length
yml_sub_string = '_2_2.yml'
public_sub_string = '/Users/hkesar/LG/git/cip-public-feeds/config/feeds/'
private_sub_string = '/Users/hkesar/LG/git/cip-private-feeds/config/feeds/'
i = 0
# => puts feed_name[10]

while i <= feed_name.length
	#puts feed_name[i]
	feed_name[i].slice! private_sub_string
	feed_name[i].slice! public_sub_string
	feed_name[i].slice! yml_sub_string
	puts feed_name[i]
	i+=1
end
