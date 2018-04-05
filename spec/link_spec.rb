require 'link'
describe Link do
  describe "#all" do
    it 'returns all the links' do
      links = Link.all
      url = links.map(&:url)
      expect(url).to include "http://www.makersacademy.com"
      expect(url).to include "http://www.google.com"
      expect(url).to include "http://www.facebook.com"
    end
  end

  describe ".create" do

    it 'does not create a link if its not a valid one' do
      Link.create(url: 'Invalid link')
      links = Link.all
      url = links.map(&:url)
      expect(url).not_to include 'Invalid link'
    end

    it 'creates a new link' do
      Link.create(url: 'http://www.testlink.com')
      links = Link.all
      url = links.map(&:url)
      expect(url).to  include 'http://www.testlink.com'
    end
end

describe '.delete' do
  it 'deletes a link' do
    Link.delete(id: 1)

    links = Link.all
    urls = links.map(&:url)

    expect(urls).not_to include "http://www.makersacademy.com"
  end
end
end
