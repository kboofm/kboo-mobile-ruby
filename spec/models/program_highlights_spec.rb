require 'spec_helper'

describe ProgramHighlights do
  it 'should save the program highlights to the database', :vcr do
    ProgramHighlights.instance.fetch
    expect(ProgramHighlights.instance.program_title).to eq '45 DJs, 45 RPM Records, 45 Years of KBOO'
  end

  # it 'should save the program description to the database', :vcr do
  #   ProgramHighlights.instance.fetch
  #   expect(ProgramHighlights.instance.description).to eq '45 DJs PLAY ONLY 45 RPM RECORDS FOR TWELVE HOURS TO CELEBRATE THE 45th BIRTHDAY OF KBOO COMMUNITY RADIO. KBOO Community Radio went on the air in 1968, and we are celebrating our 45th year with an on air special! We will highlight the 45 rpm vinyl single on November 16th from Noon to Midnight. 45 KBOO DJs and Community Members will be on the air with 15 minute sets playing only 45 rpm records. We are celebrating the 45rpm single, and the history and future of KBOO Community Radio.'
  # end
end
