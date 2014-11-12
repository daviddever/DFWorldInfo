class ArtifactController < ApplicationController
  def index
    @artifacts = Artifact.all
  end

  def show
    @artifact = Artifact.find(params[:id])
  end
end
