class Chisel

  def initialize
    @words1 = '# My Life in Desserts

    ## Chapter 1: The Beginning

    "You just *have* to try the cheesecake," he said. "Ever since it appeared in
    **Food & Wine** this place has been packed every night."'
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

  def parse_paragraph(words)
    if words[0] != "#"
      "<p>\n#{words}\n</p>"
    end
  end

  def parse_all(words1)
    line_break = false
    in_a_title = false
    in_a_paragraph = false
    in_a_tag = false

     words1.chars.map do |i|
       if line_break == false && i = "#"
         


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

end

# use \n\n to separate lines in the output
# just add <p> + to beginning of string and + </p> to the end
# what does this look like? need to know in order to insert <p> in line
# above and </p>
