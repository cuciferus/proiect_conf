class DiabetsController < ApplicationController
  before_filter :find_pacient
  # GET /diabets
  # GET /diabets.xml
  def index
    @diabets = @pacient.diabets.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @diabets }
    end
  end

  # GET /diabets/1
  # GET /diabets/1.xml
  def show
    @diabet = @pacient.diabets.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @diabet }
    end
  end

  # GET /diabets/new
  # GET /diabets/new.xml
  def new
    @diabet = @pacient.diabets.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @diabet }
    end
  end

  # GET /diabets/1/edit
  def edit
    @diabet = @pacient.diabets.find(params[:id])
  end

  # POST /diabets
  # POST /diabets.xml
  def create
    @diabet = @pacient.diabets.new

    respond_to do |format|
      if @diabet.save
        format.html { redirect_to(@diabet, :notice => 'Diabet was successfully created.') }
        format.xml  { render :xml => @diabet, :status => :created, :location => @diabet }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @diabet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /diabets/1
  # PUT /diabets/1.xml
  def update
    @diabet = @pacient.diabets.find(params[:id])

    respond_to do |format|
      if @diabet.update_attributes(params[:diabet])
        format.html { redirect_to(@diabet, :notice => 'Diabet was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @diabet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /diabets/1
  # DELETE /diabets/1.xml
  def destroy
    @diabet = @pacient.diabets.find(params[:id])
    @diabet.destroy

    respond_to do |format|
      format.html { redirect_to(diabets_url) }
      format.xml  { head :ok }
    end
  end

  def find_pacient
    @pacient = Pacient.find(params[:pacient_id])
  end

end
