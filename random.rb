require 'sass'

module Sass::Script::Functions
  module MyRandom
    def random
      Sass::Script::Number.new( rand(255))
    end
    Sass::Script::Functions.declare :random, []
  end
  include MyRandom
end