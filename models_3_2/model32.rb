# A base class for all objects which reside in the 
# bugzilla 3.2 database/schema.
#
# Setting the database connection here to point at that database means all
# subclasses inherit that attribute.
class Model32 < ActiveRecord::Base

end
