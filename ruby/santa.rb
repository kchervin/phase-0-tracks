class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "that was a good #{cookie}!"
  end

  def intitialize
    puts "intitializing Santa instance..."
  end

end

Saint_nick = Santa.new
Saint_nick.speak
Saint_nick.eat_milk_and_cookies("Snickerdoodle")
Saint_nick.intitialize