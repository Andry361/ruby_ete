class RubyGemsPage < SitePrism::Page
  set_url "/"

  element :aprove_btn, "#ctl00_BodyContent_lnkVote_1"
  element :gem_name, "a.t-link--black"
  element :play_btn, "#ctl00_BodyContent_FlashPlayer1container_jwplayer_display_icon"

end

module BaseElementsAndMethods

  def open_rubygems
    @rgp = RubyGemsPage.new
    @rgp.load
  end

  def aprove_btn_click
    @rgp.aprove_btn.click
  end

  def play_btn_click
    @rgp.play_btn.click
  end

end
