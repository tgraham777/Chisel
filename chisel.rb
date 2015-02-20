class Chisel

#   def initialize
# @words1 =
'# My Life in Desserts

## Chapter 1: The Beginning

"You just *have* to try the cheesecake," he said. "Ever since it appeared in **Food & Wine** this place has been packed every night."'
#end

  def parse_header_one(words)
    #if words[0..1] == "# "
      words.delete!("#")
      words2 = words.sub(" ", "")
      "<h1>#{words2}</h1>"
    #end
  end

  def parse_header_two(words)
    #if words[0..2] == "## "
      words.delete!("##")
      words2 = words.sub(" ", "")
      "<h2>#{words2}</h2>"
    #end
  end

  def parse_header_three(words)
    #if words[0..3] == "### "
      words.delete!("###")
      words2 = words.sub(" ", "")
      "<h3>#{words2}</h3>"
    #end
  end

  def parse_header_four(words)
    #if words[0..4] == "#### "
      words.delete!("####")
      words2 = words.sub(" ", "")
      "<h4>#{words2}</h4>"
    #end
  end

  def parse_header_five(words)
    #if words[0..5] == "##### "
      words.delete!("#####")
      words2 = words.sub(" ", "")
      "<h5>#{words2}</h5>"
    #end
  end

  def parse_header(words)
    if words[0..1] == "# "
      words.delete!("#")
      words2 = words.sub(" ", "")
      "<h1>#{words2}</h1>"
    elsif words[0..2] == "## "
      words.delete!("##")
      words2 = words.sub(" ", "")
      "<h2>#{words2}</h2>"
    elsif words[0..3] == "### "
      words.delete!("###")
      words2 = words.sub(" ", "")
      "<h3>#{words2}</h3>"
    elsif words[0..4] == "#### "
      words.delete!("####")
      words2 = words.sub(" ", "")
      "<h4>#{words2}</h4>"
    elsif words[0..5] == "##### "
      words.delete!("#####")
      words2 = words.sub(" ", "")
      "<h5>#{words2}</h5>"
    end
  end

  def parse_paragraph(words)
    if words[0] != "#"
      "<p>\n#{words}\n</p>"
    end
  end

  def split_lines(words1)
    words1.split("\n\n").flat_map do |line|
      if line.include?("#")
        line.split("\n\n")
      else
        line
      end
    end
  end

  def parse_emphasis(message)
    in_a_tag = false
    text1 = message.chars.map do |i|
      if in_a_tag == false && i == "*"
        in_a_tag = true
        i.sub(i, "<em>")
      elsif in_a_tag == true && i == "*"
        in_a_tag = false
        i.sub(i, "</em>")
      else
        i
      end
    end
    text1.join
  end

  def parse_strong_emphasis(words)
    words1 = words.split(" ")
    words3 = words1.map do |i|
      if i.include?("**")
        words2 = i.delete!("**")
        "<strong>#{words2}</strong>"
      else
        i
      end
    end
  words3.join(" ")
  end


  #input = "# My Life in Desserts\n\n## Chapter 1:
  #        The Beginning\n\n\"You just *have* to try the
  #        cheesecake,\" he said. \"Ever since it appeared
  #        in **Food & Wine** this place has been packed
  #        every night.\""
  # def parse_all(words1)
  #    words1.split("\n\n").map do |i|
  #      if i[0] == "#"
  #        i.parse_header(i)
  #      else
  #        i.
  #
  #      if new_line == false && in_a_tag == false && i == "#"
  #        i.sub(i, "<h1>")
  #         #after hit \n flip new_line to true
  #         #after hit \n\n flip new_paragraph to true
  #       end
  #
  #
  #      if in_a_tag == false && i == "*"
  #        in_a_tag = true
  #        i.sub(i, "<em>")
  #      elsif in_a_tag == true && i == "*"
  #        in_a_tag = false
  #        i.sub(i, "</em>")
  #      else
  #        i
  #      end
  #    end
  #    text1.join
  # end

end

# can use count on # to determine what level of header
# .scan( /#+\s(.+)/ )
# .scan( /#[what string starts with]+[means one or more,
# * means zero or more]\s[space](.+)[capture 1+ periods] / )
# note: \w will grab any words; scan always gives array,
# can go .first.first to change array back to original string

# use \n\n to separate lines in the output
# just add <p> + to beginning of string and + </p> to the end
# what does this look like? need to know in order to insert <p> in line
# above and </p>
