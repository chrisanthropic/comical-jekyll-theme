require "image_optim"

module Jekyll

    class ImageOptimGenerator < Generator
        safe true
	
        def generate(site)
	  puts 'Optimizing Images'
	  
	  image_optim = ImageOptim.new(:pngout => false, :svgo => false, :verbose => false)
	  image_optim.optimize_images!(Dir['images/**/*.{gif,jpeg,jpg,png}'])
  
	end
    end
end