equire_relative '../lib/dark_trader'


describe "the crypto_parsing method" do
  it "should return data, and page is not nil" do
    expect(crypto_parsing).not_to be_nil
  end
end

