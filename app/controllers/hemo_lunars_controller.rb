class HemoLunarsController < ApplicationController

 before_filter :find_pacient, :except => [:show]
  # GET /hemo_lunars
  # GET /hemo_lunars.xml
  def index
    @hemo_lunars = @pacient.hemo_lunars.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.js #index.js.erb
      format.xml  { render :xml => @hemo_lunars }
    end
  end

  # GET /hemo_lunars/1
  # GET /hemo_lunars/1.xml
  def show
    @hemo_lunar = HemoLunar.find(params[:id])
  end

  # GET /hemo_lunars/new
  # GET /hemo_lunars/new.xml
  def new
    @hemo_lunar = @pacient.hemo_lunars.new
  end

  # GET /hemo_lunars/1/edit
  def edit
    @hemo_lunar = @pacient.hemo_lunars.find(params[:id])
  end

  # POST /hemo_lunars
  # POST /hemo_lunars.xml
  def create
    @hemo_lunar = @pacient.protocols.create(params[:id]) #inca nu merge
  end

  # PUT /hemo_lunars/1
  # PUT /hemo_lunars/1.xml
  def update
    @hemo_lunar = hemo_lunar.find(params[:id])

    respond_to do |format|
      if @hemo_lunar.update_attributes(params[:hemo_lunar])
        format.html { redirect_to(@hemo_lunar, :notice => 'hemo_lunar was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hemo_lunar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hemo_lunars/1
  # DELETE /hemo_lunars/1.xml
  def destroy
    @hemo_lunar = @pacient.hemo_lunars.find(params[:id])
    @hemo_lunar.destroy

    respond_to do |format|
      format.html { redirect_to(pacient_hemo_lunars_url(@pacient)) }
      format.xml  { head :ok }
    end
  end
  private
  def find_pacient
    @pacient = params[:pacient_id] ? Pacient.find(params[:pacient_id]) : Pacient.find(params[:id])
  end
end
