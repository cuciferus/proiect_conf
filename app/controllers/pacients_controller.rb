class PacientsController < ApplicationController
  # GET /pacients
  # GET /pacients.xml
  def index
    @pacients = Pacient.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pacients }
    end
  end

  # GET /pacients/1
  # GET /pacients/1.xml
  def show
    @pacient = Pacient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pacient }
    end
  end

  # GET /pacients/new
  # GET /pacients/new.xml
  def new
    @pacient = Pacient.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pacient }
    end
  end

  # GET /pacients/1/edit
  def edit
    @pacient = Pacient.find(params[:id])
  end

  # POST /pacients
  # POST /pacients.xml
  def create
    @pacient = Pacient.new(params[:pacient])

    respond_to do |format|
      if @pacient.save
        format.html { redirect_to(@pacient, :notice => 'Pacient was successfully created.') }
        format.xml  { render :xml => @pacient, :status => :created, :location => @pacient }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pacient.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pacients/1
  # PUT /pacients/1.xml
  def update
    @pacient = Pacient.find(params[:id])

    respond_to do |format|
      if @pacient.update_attributes(params[:pacient])
        format.html { redirect_to(@pacient, :notice => 'Pacient was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pacient.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pacients/1
  # DELETE /pacients/1.xml
  def destroy
    @pacient = Pacient.find(params[:id])
    @pacient.destroy

    respond_to do |format|
      format.html { redirect_to(pacients_url) }
      format.xml  { head :ok }
    end
  end
end
