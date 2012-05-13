require 'yaml'

module Jekyll

  class ConferencesIndex < Page
    def initialize(site, base, conferences)
      @site = site
      @base = base
      @dir = '/'
      @name = 'conferences.html'
      
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'conferences.html')
      self.data['conferences'] = conferences
    end
  end
  
  class ConferencesGenerator < Generator
    safe true
    
    def generate(site)
      conferences = YAML.load_file(File.join(site.source, "conferences.yml"))
      
      index = ConferencesIndex.new(site, site.source, conferences)
      site.pages << index
    end
  end
end
