namespace :df do
  desc "import an xml dump into the database"
  task xml_import: :environment do
    XmlImportJob.import!
  end
end
