require 'link'
describe Link do
  describe "#all" do
    it 'returns all the links' do
      links = Link.all
      expect(links).to include "www.tfl.com"
      expect(links).to include "www.facebook.com"
      expect(links).to include "www.google.com"
    end
  end
end
