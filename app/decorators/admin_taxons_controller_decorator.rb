Admin::TaxonsController.class_eval do
  def taxons_list
    if params[:q].blank?
      @taxons = []
    else
      @taxons = Taxon.find(:all, :conditions => ['lower(name) LIKE ?', "%#{params[:q].downcase}%"])
    end
    respond_to do |format|
      format.html
      format.js {render :layout => false}
    end
  end
end
