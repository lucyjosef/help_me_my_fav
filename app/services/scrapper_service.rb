class ScrapperService


    def initialize(link, origin)
        @link = link
        @origin = origin
    end

    def scrap
        doc = HTTParty.get(@link)
        @page ||= Nokogiri::HTML(doc)
        if Item::SCRAPPABLE_SITES.include? @origin.to_s
            data = send("#{@origin}_scrapper") 
        else
            data = {}
        end
        data

        # TODO : check result of page scrap and create item with found attr
    end

    private

    def theorientalshop_scrapper()
        {
            cost: @page.at('span.woocommerce-Price-amount').text.strip || nil,
            name: @page.at('h1.product_title').text.strip || nil,
            image_url: @page.at('img.zoomImg')[0]["src"] || nil,
        }
    end
end 