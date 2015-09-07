require 'table_utils'

fd = io.lines('vocab')

vocab_filename = 'vocab_dict'

line = fd()
index = 1
vocabulary = {}
--vocabulary[0] = "#START#"
while line do
    --print(index, line)
    vocabulary[index] = line
    index = index + 1
    line = fd()
end

vocabulary[#vocabulary + 1] = 'EOS'

table.save(vocabulary, vocab_filename)

print (vocabulary)
--print(inv_vocabulary)


