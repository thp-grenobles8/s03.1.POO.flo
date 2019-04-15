require 'time'
class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendees)
    if start_date.class == String
      @start_date = Time.parse(start_date)
    else
      @start_date = start_date
    end
    @duration = duration.to_i
    @title = title
    @attendees = attendees.to_a
  end

  def postpone_24h
    @start_date += 3600 * 24
  end

  def end_date
    puts @start_date + @duration * 60
  end

  def is_past?
    return @start_date < Time.now
  end

  def is_future?
    return !is_past?
  end

  def is_soon?
    if is_future?
      return @start_date-30*60 < Time.now
    else
      return is_future?
    end
  end

  def to_s
    puts "Titre : #{@title}"
    puts "Date de début : #{@start_date}"
    puts "Durée : #{@duration} minutes"
    puts "Invités : " + @attendees.join(", ")
  end
end
