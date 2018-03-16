require './lib/database_connection.rb'
require 'uri'

class Link
attr_reader :url, :id, :title
  def initialize(id, url, title)
    @url = url
    @id = id
    @title = title
  end

   def self.all
     result = DatabaseConnection.query("SELECT * FROM links")
     result.map { |link| Link.new(link['id'], link['url'], link['title']) }
   end

   def self.create(options)
     return false unless is_url?(options[:url])
     DatabaseConnection.query("INSERT INTO links (url,title) VALUES('#{options[:url]}','#{options[:title]}')")
   end

  private
  def self.is_url?(url)
    url =~ /\A#{URI::regexp(['http', 'https'])}\z/
  end

 end
