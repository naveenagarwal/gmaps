class Store < ActiveRecord::Base
  ################
  # Constants
  ################

  ################
  # Attribute Accessors
  ################

  ################
  # Validations
  ################
  validates :address, :presence => true
  ################
  # callbacks
  ################
  before_save :get_lat_lon

  ################
  # Attribute accessibles
  ################
  attr_accessible :address, :latitude, :longitude

  ################
  # class methods
  ################
  
  class << self
  end

  ################
  # public methods
  ################


  ################
  # virtual methods
  ################


  ################
  # portected methods
  ################
  protected

  ################
  # private methods
  ################
  private

  def get_lat_lon
    #no geo coding if address is unaviable
    return false if address.blank? || address.squish!.blank?
    geocoded_add = Geokit::Geocoders::YahooGeocoder.geocode(address)

    #return if address is invalid for the google geocoder
    unless geocoded_add.success
      errors.add(:address, "Can not locate this address on map")
      return false
    end
    self.latitude = geocoded_add.lat  
    self.longitude = geocoded_add.lng
  end

end
