class VaultsController < ApplicationController
  before_action :set_vault, only: %i[ show edit update destroy ]

  # GET /vaults
  def index
    @vaults = Vault.all
  end

  # GET /vaults/1
  def show
  end

  # GET /vaults/new
  def new
    @vault = Vault.new
  end

  # GET /vaults/1/edit
  def edit
  end

  # POST /vaults
  def create
    @vault = Vault.new(vault_params)

    if @vault.save
      redirect_to @vault, notice: "Vault was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vaults/1
  def update
    if @vault.update(vault_params)
      redirect_to @vault, notice: "Vault was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /vaults/1
  def destroy
    @vault.destroy!
    redirect_to vaults_url, notice: "Vault was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vault
      @vault = Vault.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vault_params
      params.fetch(:vault, { name:, description: })
    end
end
