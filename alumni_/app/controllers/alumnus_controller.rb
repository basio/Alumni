class AlumnusController < ApplicationController
  # GET /alumnus
  # GET /alumnus.json
  def index
    @alumnus = Alumnu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @alumnus }
    end
  end

  # GET /alumnus/1
  # GET /alumnus/1.json
  def show
    @alumnu = Alumnu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @alumnu }
    end
  end

  # GET /alumnus/new
  # GET /alumnus/new.json
  def new
    @alumnu = Alumnu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @alumnu }
    end
  end

  # GET /alumnus/1/edit
  def edit
    @alumnu = Alumnu.find(params[:id])
  end

  # POST /alumnus
  # POST /alumnus.json
  def create
    @alumnu = Alumnu.new(params[:alumnu])

    respond_to do |format|
      if @alumnu.save
        format.html { redirect_to @alumnu, :notice => 'Alumnu was successfully created.' }
        format.json { render :json => @alumnu, :status => :created, :location => @alumnu }
      else
        format.html { render :action => "new" }
        format.json { render :json => @alumnu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /alumnus/1
  # PUT /alumnus/1.json
  def update
    @alumnu = Alumnu.find(params[:id])

    respond_to do |format|
      if @alumnu.update_attributes(params[:alumnu])
        format.html { redirect_to @alumnu, :notice => 'Alumnu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @alumnu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /alumnus/1
  # DELETE /alumnus/1.json
  def destroy
    @alumnu = Alumnu.find(params[:id])
    @alumnu.destroy

    respond_to do |format|
      format.html { redirect_to alumnus_url }
      format.json { head :no_content }
    end
  end
end
