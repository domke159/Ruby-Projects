require './lib/caesar'

describe '.caesar_cipher' do
  it "shifts the letters by 1" do
    expect(caesar_cipher('My name is Dominykas', 1)).to eql('Nz obnf jt Epnjozlbt')
  end

  it "shifts the letters by backwards" do
    expect(caesar_cipher('HeLlo', -1)).to eql('GdKkn')
  end

  it "des nt shift at all" do
    expect(caesar_cipher('HeLlo', 0)).to eql('HeLlo')
  end
end