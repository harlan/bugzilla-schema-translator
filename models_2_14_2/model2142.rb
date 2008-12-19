module Bugzilla2142
  # A base class for all objects which reside in the bugzilla 2.14.2 database / 
  # schema.  
  #
  # Setting the database connection here to point at that database means all
  # subclasses inherit that attribute.
  class Model2142 < ActiveRecord::Base
    
  end
end

