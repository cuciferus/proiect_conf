class HemodializasController < ApplicationController
  before_filter :find_pacient
  # GET /hemodializas
  # GET /hemodializas.xml
  def index
    @hemodializas = @pacient.hemodializas.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hemodializas }
    end
  end

  # GET /hemodializas/1
  # GET /hemodializas/1.xml
  def show
    #@pacient = Pacient.find(params[:id])
    @hemodializas = @pacient.hemodializas.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hemodializa }
    end
  end

  # GET /hemodializas/new
  # GET /hemodializas/new.xml
  def new
    session[:hemodializa_params] ||= {}
    @hemodializa = @pacient.hemodializas.new(session[:hemodializa_params])
    @hemodializa.current_step = session[:hemodializa_step]

  end

  # GET /hemodializas/1/edit
  def edit
    @hemodializa = @pacient.hemodializas.find(params[:id])
  end

  # POST /hemodializas
  # POST /hemodializas.xml
  def create
    session[:hemodializa_params].deep_merge!(params[:hemodializa]) if params[:hemodializa]
    @hemodializa = @pacient.hemodializas.new(session[:hemodializa_params])
    @hemodializa.current_step = session[:hemodializa_step]
    if @hemodializa.valid?
      if params[:back_button]
        @hemodializa.previous_step
      elsif params[:save_ahead]
        @hemodializa.save if @hemodializa.all_valid?
      elsif @hemodializa.last_step?
        @hemodializa.save if @hemodializa.all_valid?
      else
        @hemodializa.next_step
      end
      session[:hemodializa_step] = @hemodializa.current_step
    end
    if @hemodializa.new_record?
      render 'new'
    else
      session[:hemodializa_step] = session[:hemodializa_params] = nil
      flash[:notice] = "Am salvat datele de hemo"
      #redirect_to protocol_url(@pacient) #asta nu stiu daca merge
    end
  end

  # PUT /hemodializas/1
  # PUT /hemodializas/1.xml
  def update
    @hemodializa = Hemodializa.find(params[:id])

    respond_to do |format|
      if @hemodializa.update_attributes(params[:hemodializa])
        format.html { redirect_to(@hemodializa, :notice => 'Hemodializa was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hemodializa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hemodializas/1
  # DELETE /hemodializas/1.xml
  def destroy
    @hemodializa = @pacient.hemodializas.find(params[:id])
    @hemodializa.destroy

    respond_to do |format|
      format.html { redirect_to(pacient_hemodializas_url(@pacient)) }
      format.xml  { head :ok }
    end
  end
  private
  def find_pacient
    @pacient = Pacient.find(params[:pacient_id])
  end
end
