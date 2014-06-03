require 'rails/generators'
module Bifrost
  class InstallGenerator < Rails::Generators::Base

    source_root File.expand_path('../templates', __FILE__)

    desc 'Install Bifrost specific logic'
    def run_install
      puts "Replacing default solr schema with Bifrost version"
      copy_file 'schema.xml', 'solr_conf/conf/schema.xml', force: true
      puts "Requiring Bifrost styles"
      insert_into_file 'app/assets/stylesheets/application.css', after: 'require_tree .' do
        "\n *= require 'bifrost/bifrost'"
      end
    end
  end
end