require 'socket'
# socket=TCPSocket.new 'localhost', 6789
# puts socket.gets
# socket.close

socket = TCPSocket.new 'localhost', 8000
while true
  msg = $stdin.gets.chomp
  socket.puts(msg)
  puts socket.gets.chomp
end
