class BanzenasController < ApplicationController
  # GET /banzenas
  # GET /banzenas.json
  def index
    @banzenas = Banzena.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @banzenas }
    end
  end

  # GET /banzenas/1
  # GET /banzenas/1.json
  def show
    @banzena = Banzena.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @banzena }
    end
  end

  # GET /banzenas/new
  # GET /banzenas/new.json
  def new
    @banzena = Banzena.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @banzena }
    end
  end

  # GET /banzenas/1/edit
  def edit
    @banzena = Banzena.find(params[:id])
  end

  # POST /banzenas
  # POST /banzenas.json
  def create
    @banzena = Banzena.new(params[:banzena])

    respond_to do |format|
      if @banzena.save
        format.html { redirect_to @banzena, notice: 'Banzena was successfully created.' }
        format.json { render json: @banzena, status: :created, location: @banzena }
      else
        format.html { render action: "new" }
        format.json { render json: @banzena.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /banzenas/1
  # PUT /banzenas/1.json
  def update
    @banzena = Banzena.find(params[:id])

    respond_to do |format|
      if @banzena.update_attributes(params[:banzena])
        format.html { redirect_to @banzena, notice: 'Banzena was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @banzena.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banzenas/1
  # DELETE /banzenas/1.json
  def destroy
    @banzena = Banzena.find(params[:id])
    @banzena.destroy

    respond_to do |format|
      format.html { redirect_to banzenas_url }
      format.json { head :no_content }
    end
  end
end
