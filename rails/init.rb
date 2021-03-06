$: << File.dirname(__FILE__) + '/../lib'

require 'rubygems'
require 'kaltura'
require 'kaltura_fu'

ActionView::Base.send :include, KalturaFu::ViewHelpers

kaltura_yml = File.join(RAILS_ROOT,'config','kaltura.yml')

unless File.exists?(kaltura_yml)
  raise RuntimeError, "Unable to find \"config/kaltura.yml\" file."
end

KalturaFu.config = YAML.load_file(kaltura_yml)[RAILS_ENV].symbolize_keys

unless[:partner_id,:subpartner_id,:administrator_secret].all? {|key| KalturaFu.config.key?(key)}
  raise RuntimeError, "Kaltura config requires :partner_id, :subpartner_id,"+
		      "and :administrator_secret keys"
end
