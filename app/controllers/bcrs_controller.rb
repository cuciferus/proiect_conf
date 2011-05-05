class BcrsController < ApplicationController
  # GET /bcrs
  # GET /bcrs.xml
  def index
    @bcrs = Bcr.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bcrs }
    end
  end

  # GET /bcrs/1
  # GET /bcrs/1.xml
  def show
    @bcr = Bcr.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bcr }
    end
  end

  # GET /bcrs/new
  # GET /bcrs/new.xml
  def new
    @bcr = Bcr.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bcr }
    end
  end

  # GET /bcrs/1/edit
  def edit
    @bcr = Bcr.find(params[:id])
  end

  # POST /bcrs
  # POST /bcrs.xml
  def create
    @bcr = Bcr.new(params[:bcr])

    respond_to do |format|
      if @bcr.save
        format.html { redirect_to(@bcr, :notice => 'Bcr was successfully created.') }
        format.xml  { render :xml => @bcr, :status => :created, :location => @bcr }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bcr.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bcrs/1
  # PUT /bcrs/1.xml
  def update
    @bcr = Bcr.find(params[:id])

    respond_to do |format|
      if @bcr.update_attributes(params[:bcr])
        format.html { redirect_to(@bcr, :notice => 'Bcr was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bcr.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bcrs/1
  # DELETE /bcrs/1.xml
  def destroy
    @bcr = Bcr.find(params[:id])
    @bcr.destroy

    respond_to do |format|
      format.html { redirect_to(bcrs_url) }
      format.xml  { head :ok }
    end
  end
end
