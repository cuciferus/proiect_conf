class CentrusController < ApplicationController
  # GET /centrus
  # GET /centrus.xml
  def index
    @centrus = Centru.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @centrus }
    end
  end

  # GET /centrus/1
  # GET /centrus/1.xml
  def show
    @centru = Centru.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @centru }
    end
  end

  # GET /centrus/new
  # GET /centrus/new.xml
  def new
    @centru = Centru.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @centru }
    end
  end

  # GET /centrus/1/edit
  def edit
    @centru = Centru.find(params[:id])
  end

  # POST /centrus
  # POST /centrus.xml
  def create
    @centru = Centru.new(params[:centru])

    respond_to do |format|
      if @centru.save
        format.html { redirect_to(@centru, :notice => 'Centru was successfully created.') }
        format.xml  { render :xml => @centru, :status => :created, :location => @centru }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @centru.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /centrus/1
  # PUT /centrus/1.xml
  def update
    @centru = Centru.find(params[:id])

    respond_to do |format|
      if @centru.update_attributes(params[:centru])
        format.html { redirect_to(@centru, :notice => 'Centru was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @centru.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /centrus/1
  # DELETE /centrus/1.xml
  def destroy
    @centru = Centru.find(params[:id])
    @centru.destroy

    respond_to do |format|
      format.html { redirect_to(centrus_url) }
      format.xml  { head :ok }
    end
  end
end
