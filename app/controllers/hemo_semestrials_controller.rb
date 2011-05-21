class HemoSemestrialsController < ApplicationController
  # GET /hemo_semestrials
  # GET /hemo_semestrials.xml
  before_filter :find_pacient, :except => [:show]
  def index
    @hemo_semestrials = HemoSemestrial.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hemo_semestrials }
    end
  end

  # GET /hemo_semestrials/1
  # GET /hemo_semestrials/1.xml
  def show
    @hemo_semestrial = HemoSemestrial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hemo_semestrial }
    end
  end

  # GET /hemo_semestrials/new
  # GET /hemo_semestrials/new.xml
  def new
    @hemo_semestrial = HemoSemestrial.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hemo_semestrial }
    end
  end

  # GET /hemo_semestrials/1/edit
  def edit
    @hemo_semestrial = HemoSemestrial.find(params[:id])
  end

  # POST /hemo_semestrials
  # POST /hemo_semestrials.xml
  def create
    @hemo_semestrial = HemoSemestrial.new(params[:hemo_semestrial])

    respond_to do |format|
      if @hemo_semestrial.save
        format.html { redirect_to(@hemo_semestrial, :notice => 'Hemo semestrial was successfully created.') }
        format.xml  { render :xml => @hemo_semestrial, :status => :created, :location => @hemo_semestrial }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hemo_semestrial.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hemo_semestrials/1
  # PUT /hemo_semestrials/1.xml
  def update
    @hemo_semestrial = HemoSemestrial.find(params[:id])

    respond_to do |format|
      if @hemo_semestrial.update_attributes(params[:hemo_semestrial])
        format.html { redirect_to(@hemo_semestrial, :notice => 'Hemo semestrial was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hemo_semestrial.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hemo_semestrials/1
  # DELETE /hemo_semestrials/1.xml
  def destroy
    @hemo_semestrial = HemoSemestrial.find(params[:id])
    @hemo_semestrial.destroy

    respond_to do |format|
      format.html { redirect_to(hemo_semestrials_url) }
      format.xml  { head :ok }
    end
  end
  private
  def find_pacient
    @pacient = params[:pacient_id] ? Pacient.find(params[:pacient_id]) : Pacient.find(params[:id])
  end
end
