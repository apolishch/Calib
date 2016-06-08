class PopulateService < ActiveRecord::Migration
   def up
    Service.all.map do |service|
    if (service.status == '')
      service.status = 'Not Done Yet'
      service.save!
    end
    end
  end

  def down
    #noop data migrations don't revert
  end
end
