require_relative('../db/sql_runner')
require_relative('./house')

class Student

  attr_reader :id
  attr_accessor :first_name, :second_name, :house_id, :age

  def initialize( options )
    @id = options['id'].to_i
    @first_name = options['first_name']
    @second_name = options['second_name']
    @house_id = options['house_id'].to_i
    @age = options['age'].to_i
  end

  def full_name()
    return "#{@first_name} #{@second_name}"
  end

  def save()
    sql = "INSERT INTO students ( first_name, second_name, house_id, age ) VALUES ('#{ @first_name }','#{ @second_name }', #{ @house_id }, #{ @age }) 
    RETURNING *;"
    student_data = SqlRunner.run(sql)
    @id = student_data.first()['id'].to_i
  end

  def update()
    sql = "UPDATE students SET
    first_name = '#{ @first_name }',
    second_name = '#{ @second_name }',
    house_id = '#{ @house_id }',
    age = #{ @age }
    WHERE id = '#{ @id }';"
    SqlRunner.run( sql )
  end

  def delete()
    sql = "DELETE FROM students WHERE id=#{ @id };"
    SqlRunner.run( sql )
  end

  def house()
    sql = "SELECT * FROM houses 
    WHERE id = #{@house_id}"
    house = SqlRunner.run(sql)
    result = House.new( house.first )
    return result
  end


  def Student.all()
    sql = "SELECT * FROM students;"
    students = SqlRunner.run( sql )
    result = students.map { |student| Student.new( student ) }
    return result
  end

  def Student.find( id )
    sql = "SELECT * FROM students WHERE id=#{id};"
    student = SqlRunner.run( sql )
    result = Student.new( student.first )
    return result
  end

end