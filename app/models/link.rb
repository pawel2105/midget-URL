class Link < ActiveRecord::Base
  validates_format_of :url, :with => /^http/, :message => "Please prepend with http://"
  validates_length_of :url, :minimum => 15
end

