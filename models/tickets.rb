require_relative ("../db/sql_runner")
require_relative ("films")
require_relative ("customers")

class Ticket

  attr_reader :id
  attr_accessor :customer_id, :film_id


  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @customer_id = options["customer_id"].to_i
    @film_id = options["film_id"].to_i

  end


  def save()
    sql = "INSERT INTO tickets
    (
      customer_id,
      film_id
      )
      VALUES
      (
        $1, $2
      )
      RETURNING id"
      values = [@customer_id, @film_id]
      location = SqlRunner.run( sql, values).first
      @id = location["id"].to_i
   end

   def self.all()
    sql = "SELECT * FROM tickets"
    tickets = SqlRunner.run(sql)
    return tickets.map { |ticket| Ticket.new(ticket)}
  end

  def delete()
   sql = "DELETE FROM tickets WHERE id = $1"
   values = [@id]
   SqlRunner.run(sql, values)
  end




end
