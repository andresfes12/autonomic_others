Given("I have the number {int}") do |number|
  @number1 = number
end

When("I add the two numbers") do
  @result = @number1 + @number2
end

Then("I should see the result {int}") do |expected_result|
  expect(@result).to eq(expected_result)
end

