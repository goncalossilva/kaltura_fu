module KalturaFu
  module Entry
    
    ##
    # Class level methods for the Entry module.  
    ##
    module ClassMethods
      #extend KalturaFu::Entry::Metadata
      ##
      # Allows you to upload some variety of media into Kaltura.  
      # This isn't going to be as great to use as one of their flash widgets, and 
      # should likely be used "off" the web process to not slow the application down.
      #
      # @param upload_object The object to upload.  Currently, it only works with a File.
      # @param [Hash] options An options hash of Kaltura Media Entry attributes to add & the
      #   upload_object source.
      # @option options [Symbol] :source(nil) Currently only accepts :file
      #
      # @return [String] Returns the Kaltura Media Entry's ID that was created.
      # @raise [Kaltura::APIError] It will force a Kaltura::APIError if something went terribly wrong.
      #
      # @todo Add the other upload types.
      ##
      def upload(upload_object,options={})
        KalturaFu.check_for_client_session
        
        #options_for_media_entry = options.delete(:source)
        media_entry = construct_entry_from_options(options)
        upload_from_file(upload_object,media_entry) if options[:source] == :file
      end
      
      ##
      # @todo Build find.
      ##
      def find
        #pending
      end
      
      ##
      # @private
      ##
      def upload_from_file(upload_object,media_entry)
        upload_token = KalturaFu.client.media_service.upload(upload_object)
        KalturaFu.client.media_service.add_from_uploaded_file(media_entry,upload_token).id
      end
      
      ##
      # @private
      ##
      def construct_entry_from_options(options={})
        media_entry = Kaltura::MediaEntry.new
        options.each do |key,value|
          media_entry.send("#{key}=",value) if valid_entry_attribute?(key)
        end
          media_entry.media_type = Kaltura::Constants::Media::Type::VIDEO if options[:media_type].nil?
          return media_entry
      end
      
    end #ClassMethods
  end #Entry
end #KalturaFu