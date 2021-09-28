Pry.config.prompt = Pry::Prompt.new(
    'custom',
    'my custom prompt',
    [proc {"▷ " },
     proc { "     | " }],
  )

# Pry.config.print = proc { |output, value| output.puts "=> #{value.inspect}" }

# switch default editor for pry to code
Pry.config.editor = "code"

Dir['./lib/*.rb'].each { |f| require f }

# if you have already done 'gem install awesome_print':
require "awesome_print"
AwesomePrint.pry!
