require 'bundler/gem_tasks'

desc "Get the newest version of formalize from github"
task :update do
  Thread.abort_on_exception = true
  require 'open-uri'

  base_url = "https://raw.github.com/nathansmith/formalize/master/assets"
  target   = "vendor/assets"

  js     = %w(dojo.formalize.js dojo.formalize.min.js extjs.formalize.js extjs.formalize.min.js jquery.formalize.js jquery.formalize.min.js mootools.formalize.js mootools.formalize.min.js prototype.formalize.js prototype.formalize.min.js yui.formalize.js yui.formalize.min.js)
  css    = %w(formalize.css)
  images = %w(button.png select_arrow.gif)

  threads = []

  threads += js.map do |file|
    Thread.new do
      url  = File.join(base_url, "js", file)
      path = File.join(target, "javascripts", file)
      File.open(path, 'w') do |t|
        open url do |f|
          f.each_line do |line|
            t << line
          end
        end
      end
      puts "Saved #{path}"
    end
  end

  threads += images.map do |file|
    Thread.new do
      url  = File.join(base_url, "images", file)
      path = File.join(target, "images/formalize", file)
      File.open(path, 'wb') do |t|
        open url do |f|
          t << f.read
        end
      end
      puts "Saved #{path}"
    end
  end


  threads += css.map do |file|
    Thread.new do
      url  = File.join(base_url, "css", file)
      path = File.join(target, "stylesheets", "#{file}.scss")
      File.open(path, 'w') do |t|
        open url do |f|
          f.each_line do |line|
            t << line.gsub(%r|url\(.+/([^/]+)\)|) { |m| "image-url('formalize/#{$1.split("?",2).first}')" }
          end
        end
      end
      puts "Saved #{path}"
    end
  end

  threads.each(&:join)

  puts "Done!"

end
