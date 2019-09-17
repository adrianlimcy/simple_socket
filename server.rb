require 'socket'

# server = TCPServer.new 6789
# while true
#   session = server.accept
#   session.puts "hello it's #{Time.now}"
# end
# session.close

server = TCPServer.new 8000
session =  server.accept

while true
  request = session.gets.chomp
  puts "They said \"#{request}\""
  session.puts "But why did you say \"#{request}\"?"
end
session.close
