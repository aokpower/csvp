class Processor
  def self.diff(keep_table, compare_table, compare_header)
    diff = keep_table[compare_header] - compare_table[compare_header]
    a.select { |row| diff.include?(row[compare_header]) }
  end

  def self.intersect(keep_table, data_table, compare_header)
    # Copy/pasted from bin/csvp. Needs to have variables translated.
    common = keep_table[compare_header] & data_table[compare_header]
    data_table.select { |row| common.include?(row[compare_header]) }
  end
end
