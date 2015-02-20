require "minitest"
require "minitest/autorun"
require_relative "chisel.rb"

class ChiselTest < Minitest::Test

  def test_header_one
    chisel = Chisel.new
    parser = chisel.parse_header_one("# This is Awesome")
    assert_equal "<h1>This is Awesome</h1>", parser
  end

  def test_header_two
    chisel = Chisel.new
    parser = chisel.parse_header_two("## This is Awesome")
    assert_equal "<h2>This is Awesome</h2>", parser
  end

  def test_header_three
    chisel = Chisel.new
    parser = chisel.parse_header_three("### This is Awesome")
    assert_equal "<h3>This is Awesome</h3>", parser
  end

  def test_header_four
    chisel = Chisel.new
    parser = chisel.parse_header_four("#### This is Awesome")
    assert_equal "<h4>This is Awesome</h4>", parser
  end

  def test_header_five
    chisel = Chisel.new
    parser = chisel.parse_header_five("##### This is Awesome")
    assert_equal "<h5>This is Awesome</h5>", parser
  end

  def test_paragraph
    chisel = Chisel.new
    parser = chisel.parse_paragraph("This is such an awesome paragraph.")
    assert_equal "<p>\nThis is such an awesome paragraph.\n</p>", parser
  end

  def test_split_lines
    skip
    chisel = Chisel.new
    parser = chisel.split_lines("### a header\nand a paragraph")
    assert_equal ["### a header", "and a paragraph"], parser
  end

  def test_parse_header
    chisel = Chisel.new
    parser = chisel.parse_header("### This is a header")
    assert_equal "<h3>This is a header</h3>", parser
  end

  def test_parse_all
    skip
  end

end


#def test_it_exists
#  parser = Chisel.new
#end


# def test_emphasis_1
#   chisel = Chisel.new
#   parser = chisel.parse_emphasis("*hello* *my* *friend*")
#   assert_equal "<em>hello</em> <em>my</em> <em>friend</em>", parser # my <em>friend</em>", parser
# end
#
# def test_emphasis_strong
#   chisel = Chisel.new
#   parser = chisel.parse_strong_emphasis("**hello** my **friend**")
#   assert_equal "<strong>hello</strong> my <strong>friend</strong>", parser # my <em>friend</em>", parser
# end
#
# def test_emphasis_strong
#
# end
#
# def test_emphasis_strong
#
# end
