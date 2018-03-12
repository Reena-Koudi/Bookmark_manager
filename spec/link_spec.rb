require 'link'
describe Link do
  describe "#all" do
    it 'returns all the links' do
      links = Link.new.all
      expect(links).to include "www.bodyshop.com"
      expect(links).to include "www.tfl.com"
      expect(links).to include "www.google.com"
    end
  end
end
