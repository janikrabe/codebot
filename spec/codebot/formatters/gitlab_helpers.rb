# frozen_string_literal: true

require 'spec_helper'

class TestShortener
  def shorten_url(url)
    "shortened://#{url}"
  end
end

def remove_color_highlight(result)
  result.map do |str|
    ::Cinch::Formatting.unformat(str)
  end
end

def load_formatter_from(fname, mod)
  payload = Codebot::Payload.new(File.read("#{File.dirname(__FILE__)}/fixtures/#{fname}.json"))
  mod.new(payload.json, TestShortener.new)
end

def do_format_test(fname, mod)
  formatter = load_formatter_from(fname, mod)
  remove_color_highlight(formatter.format)
end
