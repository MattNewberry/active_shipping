module ActiveMerchant #:nodoc:
  module Shipping
    
    class ShipmentResponse < Response
      attr_reader :tracking_number # string
      attr_reader :label
      attr_reader :rate
      attr_reader :transit_time
      attr_reader :origin, :destination
      
      def initialize(success, message, params = {}, options = {})
        @tracking_number = options[:tracking_number]
        @label = options[:label]
        @rate = options[:rate]
        @transit_time = options[:transit_time]
        @origin, @destination = options[:origin], options[:destination]
        super
      end
    end
    
  end
end