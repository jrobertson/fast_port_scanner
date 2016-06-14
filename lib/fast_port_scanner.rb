#!/usr/bin/env ruby

# file: fast_port_scanner.rb

require 'socket'
require 'timeout'


class FastPortScanner

  def self.scan(ip='127.0.0.1', ports: 1..1000, wait: 1.25)

    a = []

    ports.map do |port|

      Thread.new do
        
        begin
          Timeout::timeout(1){TCPSocket.new(ip, port)}
        rescue
          #puts "closed : #{port}"
        else
          #puts "open : #{port}"
          a << port
        end
        
      end

    end.join
    
    sleep wait

    @to_a = a.sort

  end

end

if __FILE__ == $0 then

  a = FastPortScanner.scan

end
