#!/usr/bin/env ruby

class PuzzleOne
  def self.solve(input)
    input
      .split("\n\n")
      .map { |calories| calories.split("\n").map(&:to_i) }
      .map(&:sum)
      .max
  end
end

class PuzzleTwo
  def self.solve(input)
    input
      .split("\n\n")
      .map { |calories| calories.split("\n").map(&:to_i) }
      .map(&:sum)
      .sort
      .last(3)
      .sum
  end
end

input = File.read("input.txt")

puts "Puzzle One Answer: #{PuzzleOne.solve(input)}"
puts "Puzzle Two Answer: #{PuzzleTwo.solve(input)}"
