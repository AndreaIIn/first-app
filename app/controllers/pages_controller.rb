class PagesController < ApplicationController
  def home
    @time_now = Time.now.to_s
  end

  def about
    @time_now = "Time is flying: " + Time.now.to_s
    @prng = Random.new
  end

  def contact
    @my_email = "andrea@i-influence.com"
    @my_mobile = "+852 9999-8888"
  end
end
