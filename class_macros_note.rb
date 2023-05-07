#!/usr/bin/env ruby

require './lib/my_service'
require './lib/facebook_messager'
require './lib/twitter_messager'

my_serv = MyService.new

my_serv.first_method
my_serv.second_method
my_serv.third_method

message = 'Hi guys!'
msgr = FacebookMessager.new
msgr.send_message message

msgr = TwitterMessager.new
msgr.send_message message