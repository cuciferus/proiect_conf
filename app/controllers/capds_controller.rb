class CapdsController < ApplicationController
  # GET /capds
  # GET /capds.xml
  def index
    @capds = Capd.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @capds }
    end
  end

  # GET /capds/1
  # GET /capds/1.xml
  def show
    @capd = Capd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @capd }
    end
  end

  # GET /capds/new
  # GET /capds/new.xml
  def new
    @capd = Capd.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @capd }
    end
  end

  # GET /capds/1/edit
  def edit
    @capd = Capd.find(params[:id])
  end

  # POST /capds
  # POST /capds.xml
  def create
    @capd = Capd.new(params[:capd])

    respond_to do |format|
      if @capd.save
        format.html { redirect_to(@capd, :notice => 'Capd was successfully created.') }
        format.xml  { render :xml => @capd, :status => :created, :location => @capd }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @capd.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /capds/1
  # PUT /capds/1.xml
  def update
    @capd = Capd.find(params[:id])

    respond_to do |format|
      if @capd.update_attributes(params[:capd])
        format.html { redirect_to(@capd, :notice => 'Capd was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @capd.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /capds/1
  # DELETE /capds/1.xml
  def destroy
    @capd = Capd.find(params[:id])
    @capd.destroy

    respond_to do |format|
      format.html { redirect_to(capds_url) }
      format.xml  { head :ok }
    end
  end
end
