class ProtocolsController < ApplicationController
  before_filter :authenticate_user!, :find_pacient
  # GET /protocols
  # GET /protocols.xml
  def index
    @protocols = Protocol.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @protocols }
    end
  end

  # GET /protocols/1
  # GET /protocols/1.xml
  def show
    @protocols = @pacient.protocols.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @protocol }
    end
  end

  # GET /protocols/new
  # GET /protocols/new.xml
  def new
    @protocol = @pacient.protocols.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @protocol }
    end
  end

  # GET /protocols/1/edit
  def edit
    @protocol = @pacient.protocols.find(params[:id])
  end

  # POST /protocols
  # POST /protocols.xml
  def create
    @protocol = @pacient.protocols.create(params[:]) #inca nu merge; da nu stiu daca trebe
  end

  # PUT /protocols/1
  # PUT /protocols/1.xml
  def update
    @protocol = Protocol.find(params[:id])

    respond_to do |format|
      if @protocol.update_attributes(params[:protocol])
        format.html { redirect_to(@protocol, :notice => 'Protocol was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @protocol.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /protocols/1
  # DELETE /protocols/1.xml
  def destroy
    @protocol = Protocol.find(params[:id])
    @protocol.destroy

    respond_to do |format|
      format.html { redirect_to(protocols_url) }
      format.xml  { head :ok }
    end
  end
  private
  def find_pacient
    @pacient = params[:pacient_id] ? Pacient.find(params[:pacient_id]) : Pacient.find(params[:id])
  end
end
