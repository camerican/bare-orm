class User

  def self.all
    command = `sqlite3 uncubed.db "SELECT * FROM companies;"`
    sql_results_parser command
  end

  def self.sql_results_parser(command)
    #some code to parse what gets returned from the SQL command
  end
  
end
