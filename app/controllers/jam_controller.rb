# app/controllers/jam_controller.rb

class JamController < ApplicationController
  def new
  end

  def create
    if check_validity(params[:input])
      @bassline = generate_random_bassline
      @drum_pattern = generate_random_drum_pattern
      render :show
    else
      render json: { message: 'Invalid input' }, status: :unprocessable_entity
    end
  end

  private

  def check_validity(input)
    input.downcase.include?('play')
  end

  def generate_random_bassline
    ['A#', 'C', 'D#', 'F', 'G#'].sample(4).join(' ')
  end

  def generate_random_drum_pattern
    ['kick', 'snare', 'hi-hat', 'ride', 'crash'].sample(4).join(' ')
  end
end
