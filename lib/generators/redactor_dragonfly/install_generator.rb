require 'rails/generators'
require 'rails/generators/migration'
module RedactorDragonfly
  module Generators

    class InstallGenerator < ::Rails::Generators::Base
      include ::Rails::Generators::Migration

      def self.source_root
        @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      end

      def self.next_migration_number(dirname)
        Time.now.strftime("%Y%m%d%H%M%S")
      end

      def mount_engine
        route "mount RedactorDragonfly::Engine => '/#{self_dir}'"
      end

      def create_models
        template "model.rb", File.join('app/models', self_dir, "attach.rb")
      end

      def create_migration
        migration_template "migration.rb", File.join('db/migrate', "create_redactor_dragonfly_attaches.rb")
      end

      def self_dir
        'redactor_dragonfly'
      end

    end

  end

end