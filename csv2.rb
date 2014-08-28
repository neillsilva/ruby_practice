require ‘csv’

f = File.open(‘transaction.txt’)

data = CSV.parse(f.read)

