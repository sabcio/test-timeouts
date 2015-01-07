class HomeController < ApplicationController
  def index
    render plain: 'Home'
  end

  def test_pg_timeout
    s = Time.now
    ActiveRecord::Base.transaction do
      ActiveRecord::Base.connection.execute("select pg_sleep(20)")
    end
    f = Time.now

    render plain: "OK #{s} - #{f}"
  end

  def test_timeout
    s = Time.now
    sleep 20
    f = Time.now

    render plain: "OK #{s} - #{f}"
  end
end
