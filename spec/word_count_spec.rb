require('rspec')
#require('descriptive_statistics')
  require('word_count')

describe('String#word_count') do
  it("word appears more than once return the number of times it appears") do
    expect(("paul is a Good boy Good ").word_count("Good")).to eq(2)
  end
end
