class LendablesController < ApplicationController
  # GET /lendables
  # GET /lendables.xml
  def index
    @lendables = Lendable.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lendables }
    end
  end

  # GET /lendables/1
  # GET /lendables/1.xml
  def show
    @lendable = Lendable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lendable }
    end
  end

  # GET /lendables/new
  # GET /lendables/new.xml
  def new
    @lendable = Lendable.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lendable }
    end
  end

  # GET /lendables/1/edit
  def edit
    @lendable = Lendable.find(params[:id])
  end

  # POST /lendables
  # POST /lendables.xml
  def create
    @lendable = Lendable.new(params[:lendable])

    respond_to do |format|
      if @lendable.save
        format.html { redirect_to(@lendable, :notice => 'Lendable was successfully created.') }
        format.xml  { render :xml => @lendable, :status => :created, :location => @lendable }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lendable.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lendables/1
  # PUT /lendables/1.xml
  def update
    @lendable = Lendable.find(params[:id])

    respond_to do |format|
      if @lendable.update_attributes(params[:lendable])
        format.html { redirect_to(@lendable, :notice => 'Lendable was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lendable.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lendables/1
  # DELETE /lendables/1.xml
  def destroy
    @lendable = Lendable.find(params[:id])
    @lendable.destroy

    respond_to do |format|
      format.html { redirect_to(lendables_url) }
      format.xml  { head :ok }
    end
  end
end
