module ChileanCities
  class SeedsGenerator < Rails::Generators::Base

    desc <<DESC
Description:
    Copy ChileanCities seeds to your application.
DESC

    source_root File.expand_path("../../../templates", __FILE__)

    def install_seeds
      copy_file 'db/seeds/comunas.rb'

      update_or_create('db/seeds.rb', '# Load the chilean cities here please')
    end

    private

    # Private: Update a file with its template content, or create it
    # See also: http://edgeapi.rubyonrails.org/classes/Rails/Engine.html (migrations, seeds)
    def update_or_create(path, pointer)
      gsub_file path, /(#{Regexp.escape(pointer)})/i do |match|

        # Build the template file path
        template_path = File.expand_path("../../../templates", __FILE__) + "/" + path

        # Replace the pointer by the content of the template file
        File.read template_path
      end
    end

    # Private: Replace a given String of a file by another provided through a Block
    # See http://stackoverflow.com/questions/2088480/modify-a-file-with-a-rails-generator
    def gsub_file(path, regexp, *args, &block)
      begin
        content = File.read(path).gsub(regexp, *args, &block)
        File.open(path, 'wb') { |file| file.write(content) }
      rescue
        copy_file 'db/seeds.rb'
      end
    end
  end
end
