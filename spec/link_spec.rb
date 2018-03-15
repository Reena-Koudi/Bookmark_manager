require 'link'
describe Link do
  describe "#all" do
    it 'returns all the links' do
      links = Link.all
      expect(links).to include "http://www.makersacademy.com"
      expect(links).to include "http://www.google.com"
      expect(links).to include "http://www.facebook.com"
    end
  end

  describe ".create" do

    it 'does not create a link if its not a valid one' do
      Link.create(url: 'Invalid link')
      expect(Link.all).not_to include 'Invalid link'
    end
    
    it 'creates a new link' do
      Link.create(url: 'http://www.testlink.com')
      expect(Link.all).to  include 'http://www.testlink.com'
    end
  end
end
