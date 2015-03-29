DFWorldInfo
===========

Rails site for displaying exported Dwarf Fortress world information. Right now just a basic framework, still has a lot of work to be done. 

**To Run**

* Install Rails
* Clone the repository
* rvm use 4.2.0

Currently exported files are hardlinked, eventually this will be changed so that the user can upload the files through the site and the data is automatically loaded.

The export files should be stored in /app/dfdata and named with the region2-00005-01-01- prefix (with the exception of the map bitmap which needs to be named region1-00550-01-01-world_map.bmp).

/app/jobs/xml_import_job.rb parses and loads the world information into the database. Run `rake dfworldinfo:xml_import_job`
