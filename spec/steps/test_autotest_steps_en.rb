require 'spec_helper'
require 'parallel'

module TestAutotestStepsEn
  include BaseElementsAndMethods
  # include Parallel
  step 'the test' do
    loop {
        as = [1,2,3,4,5,6,7,8]
        Parallel.map(as, in_threads: 1) { |one_letter| 
      
        str = (0...8).map { (65 + rand(26)).chr }.join
        Capybara.using_session("#{str}") do
          open_rubygems
          sleep (6..11).to_a.sample
          play_btn_click
          sleep (60..90).to_a.sample
          aprove_btn_click
          sleep (5..13).to_a.sample
          page.driver.browser.close
        end
        sleep (10..35).to_a.sample
      }

    }
  end

end

RSpec.configure { |c| c.include TestAutotestStepsEn }
