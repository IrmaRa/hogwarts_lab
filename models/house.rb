require_relative('../db/sql_runner')

class House

  attr_reader :id
  attr_accessor :name, :logo_url

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
    @logo_url = options['logo_url']
  end

  def save()
    sql = "INSERT INTO houses ( name, logo_url ) VALUES ('#{ @name }','#{ @logo_url }') 
      RETURNING *;"
    house_data = SqlRunner.run(sql)
    @id = house_data.first()['id'].to_i
  end
end