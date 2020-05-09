module ItemHelper
    # Keep it commented cause it fails :/ 
    # require 'HTTParty'
    # require 'Nokogiri'

    def rescrap(item)
    end

    def scrap_new(item)
        doc = HTTParty.get(item.link)
        @parsed_page ||= Nokogiri::HTML(doc)
    end
end
