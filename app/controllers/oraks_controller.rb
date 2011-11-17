class OraksController < ApplicationController
  # GET /oraks
  # GET /oraks.json

before_filter :login_required, :except => [:index, :show]

  def index
    @oraks = Orak.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @oraks }
    end
  end

  # GET /oraks/1
  # GET /oraks/1.json
  def show
    @orak = Orak.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @orak }
    end
  end

  # GET /oraks/new
  # GET /oraks/new.json
  def new
    @orak = Orak.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @orak }
    end
  end

  # GET /oraks/1/edit
  def edit
    @orak = Orak.find(params[:id])
  end

  # POST /oraks
  # POST /oraks.json
  def create
    @orak = Orak.new(params[:orak])

    respond_to do |format|
      if @orak.save
        format.html { redirect_to @orak, :notice => 'Orak was successfully created.' }
        format.json { render :json => @orak, :status => :created, :location => @orak }
      else
        format.html { render :action => "new" }
        format.json { render :json => @orak.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /oraks/1
  # PUT /oraks/1.json
  def update
    @orak = Orak.find(params[:id])

    respond_to do |format|
      if @orak.update_attributes(params[:orak])
        format.html { redirect_to @orak, :notice => 'Orak was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @orak.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /oraks/1
  # DELETE /oraks/1.json
  def destroy
    @orak = Orak.find(params[:id])
    @orak.destroy

    respond_to do |format|
      format.html { redirect_to oraks_url }
      format.json { head :ok }
    end
  end
end
