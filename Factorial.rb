#!/usr/bin/env ruby

##
# This program calculates the factorial of a number using recursion.
#
# Created by: Marlon Poddalgoda
# Version: 1.0
# Since:   2021-05-07
# frozen_string_literal: true


def factorialFunc(userNum)
    # uses recursion to calculate factorial

    # check if number is 1, 0 or above
    if userNum == 1
        # return string
        return userNum
    elsif userNum == 0
        # return 1
        return 1
    else
        # factorial recursion
        return (userNum * factorialFunc(userNum - 1))
    end
end

begin
    # try statement

    while true do
        # Asks user for input
        print "Enter a positive integer: "

        # Gets the user input as an int
        userInput = Integer(gets) rescue false

        if userInput < 0
            # check if input is negative
            puts "Sorry, that's not a positive number. Please try again."
            next
        else
            # call function
            factorialInt = factorialFunc(userInput)
            break
        end
    end

    # print factorial answer to console
    puts
    puts "The factorial of #{userInput} is #{factorialInt}"

rescue StandardError
    # error catch, if user input cannot be converted to int
    puts
    puts "Sorry, that's not a number. Please try again."
end

puts
puts "Done."
