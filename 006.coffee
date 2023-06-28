fs = require 'fs'

round = (number) ->
  if number >= 0
    Math.floor(number + 0.5)
  else
    Math.ceil(number - 0.5)

processNumbers = ->
  number = parseFloat(readLine())
  rounded = round(number)
  process.stdout.write rounded.toString() + ' '

numCases = parseInt(readLine())
for i in [1..numCases]
  processNumbers()

