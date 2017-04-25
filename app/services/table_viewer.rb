require 'terminal-table'

class TableViewer
  def view(primes, multi)
    @headings = ['']
    @headings << primes

    multi_transpose = multi.transpose

    @rows = []
    primes.each_with_index do |prime, index|
      row = [prime]
      row.push(multi[index])
      row.push(multi_transpose[index])

      row = row.flatten.uniq
      row.delete(0)

      @rows << row
    end

    puts table
  end

  private

  def table
    Terminal::Table.new(
      headings: @headings.flatten,
      rows: @rows
    )
  end
end
