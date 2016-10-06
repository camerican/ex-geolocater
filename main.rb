require 'geolocater'
require 'socket'
require 'rainbow'

puts Rainbow("Enter a website to look up").red
site = gets.strip
ip = IPSocket::getaddress(site)
data = Geolocater.geolocate_ip(ip)
puts "#{Rainbow(site).bg(:cyan)} is in #{Rainbow(data['city']).underline}, #{Rainbow(data['region_name']).inverse}" 
