xml.instruct!
xml.urlset 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  site_url = 'http://myblog.com/' # TODO: Replace with absolute URL of site
  sitemap.resources.select { |page| page.path =~ /\.html$/ }.each do |page|
    xml.url do
      xml.loc "#{site_url}#{page.path}"
      xml.lastmod Date.today.to_time.iso8601
      xml.changefreq page.data.changefreq || 'weekly'
      xml.priority page.data.priority || '0.5'
    end
  end
end
