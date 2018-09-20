File.open("/Users/hkesar/LG/git/cip-cop/controls/tpx_2_2/whois_daily_gtlds/2015/04/01/20150401120000_WhoisDailyGtldsCollector.json", "r") do |f|
  f.each_line do |line|
    puts line if (line[/_at_t\b/])
  end
end