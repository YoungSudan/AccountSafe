# frozen_string_literal: true

require 'csv'
module AccountSafe
  class ImportCsv
    class CsvImportError < StandardError; end
    class FileNotFound < StandardError; end
    class InvalidFileType < StandardError; end

    attr_accessor :account, :file_path

    def initialize(file_path, account: nil)
      @file_path = file_path
      @account = account
    end

    def self.import!(file_path)
      new(file_path).import
    end

    def import
      validate_file
      CSV.foreach(file_path) do |row|
        puts(row)
      rescue StandardError => e
        CsvImportError.new(e.message)
      end
    end

    def validate_file
      raise FileNotFound, "Could not find file #{File.basename(file_path)}" unless File.file?(file_path)
      unless File.extname(file_path) != '.csv'
        raise InvalidFileType("File type #{File.extname(file_path)} is not supported")
      end
    end
  end
end
