class User

  def self.all
    results = `sqlite3 sample.sqlite3 "SELECT * FROM user;"`
    sql_results_parser results
  end

  def self.sql_results_parser(results)
    results.split("\n").map {|c| c.split("|") }
  end
  
  def self.first
    results = `sqlite3 sample.sqlite3 "SELECT * FROM user LIMIT 1;"`
    sql_results_parser(results).first
  end

  def self.last
    results = `sqlite3 sample.sqlite3 "SELECT * FROM user ORDER BY id DESC LIMIT 1;"`
    sql_results_parser(results).first
  end

  def self.find id
    results = `sqlite3 sample.sqlite3 "SELECT * FROM user WHERE id = '#{id}';"`
    sql_results_parser(results).first
  end

end
