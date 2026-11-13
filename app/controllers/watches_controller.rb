# frozen_string_literal: true

# WatchesController manages watch-related actions such as listing, showing, and randomizing watches.
class WatchesController < ApplicationController
  def index
    Watch.update_all(selected: false) if reset_needed

    @watches = Watch.where(selected: false)
  end

  def show
    @watch = Watch.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to watches_path, alert: 'Watch not found.'
  end

  def randomize
    @watch = Watch.where('last_selected_at >= ?', Time.zone.now.beginning_of_day).first ||
             Watch.where(selected: false).sample

    if @watch
      @watch.update(selected: true, last_selected_at: Time.zone.now)
      redirect_to @watch
    else
      redirect_to watches_path, alert: 'No more watches available. All have been selected!'
    end
  end

  private

  def reset_needed
    # Reset if no watches have been selected in the current month (start of month reset)
    # or if all watches are currently selected (cycle complete reset)
    month_start = Time.zone.now.beginning_of_month
    month_end = Time.zone.now.end_of_month
    Watch.where.not(last_selected_at: month_start..month_end).count == Watch.count ||
      Watch.where(selected: false).count.zero?
  end
end
