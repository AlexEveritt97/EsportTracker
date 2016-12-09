class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]


  # GET /matches
  # GET /matches.json
  def index
    @matches = Match.all
  end

  # GET /matches/1
  # GET /matches/1.json
  def show
    @teams = @match.teams
    
  end

  # GET /matches/new
  def new
    @match = Match.new

    @teams = Team.all


  end

  # GET /matches/1/edit
  def edit
    @teams = Team.all

  end

  # POST /matches
  # POST /matches.json
  def create

    @match = Match.new(match_params)

    ## gets current teams (if any) and deletes them
    @teamsNow = @match.teams
    @match.teams.delete(@teamsNow)

    ## gets team objects based on the select fields in the match form
    @teamA = Team.where(name: params[:match][:teamA])
    @teamB = Team.where(name: params[:match][:teamB])

    ## stores these in the matchTeams table (many to many relationship)
    @match.teams << @teamA
    @match.teams << @teamB

    respond_to do |format|
      if @match.save
        format.html { redirect_to @match, notice: 'Match was successfully created.' }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matches/1
  # PATCH/PUT /matches/1.json
  def update

    ## gets the current teams and deletes from from matchTeams table
    ## this is essentail to ensure matches are only registered to the teams
    ## playing in them and not the teams that used to be playing in them
    @teamsNow = @match.teams
    @match.teams.delete(@teamsNow)

    ## gets and stores new teams from form into matchTeams
    @teamA = Team.where(name: params[:match][:teamA])
    @teamB = Team.where(name: params[:match][:teamB])

    @match.teams << @teamA
    @match.teams << @teamB


    respond_to do |format|
      if @match.update(match_params)
        format.html { redirect_to @match, notice: 'Match was successfully updated.' }
        format.json { render :show, status: :ok, location: @match }
      else
        format.html { render :edit }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matches/1
  # DELETE /matches/1.json
  def destroy
    @match.destroy
    respond_to do |format|
      format.html { redirect_to matches_url, notice: 'Match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_params
      params.require(:match).permit(:teamA, :teamB, :date, :info, :teamAScore, :teamBScore)
    end
end
