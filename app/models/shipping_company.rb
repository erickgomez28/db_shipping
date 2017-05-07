class ShippingCompany < ApplicationRecord
  has_one :contact, as: :contactable

  has_many :vessels
  has_many :containers
  has_many :bls, :class_name => 'BillOfLading', :as => :consolidable
  has_many :travels, :through => :vessels

  def self.report_bls

    BillOfLading.where(consolidable_type: 'ShippingCompany', consigneable_type: 'Nvocc').map do |bl|
        {
          :code_bl => bl.code, 
          :name_shipping_company => ShippingCompany.find( bl.consolidable_id ).name,
          :name_consigne => Nvocc.  find( bl.consolidable_id ).name,
          :origen_mercancia => bl.travel.origen.name,
          :destino_mercancia => bl.travel.destination.name,
          :fecha_atraque => bl.travel.docking_date,
          :code_travel => bl.travel.code
        }      
    end

  end 
  private 
  def get_consolidator_name bl
  	ShippingCompany.find(bl.consolidable_id).name
  end
  def get_consignee consigneable
  	Nvocc.find( bl.consolidable_id )
  end
end
