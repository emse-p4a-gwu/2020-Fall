


# ------------------------------------------------
# Practice 1: Functions

# Consider the following code (don't run it):

# val <- sqrt(y = abs(-10))
# val <- abs(x = log(10))
# result <- round(x, digits  sqrt(abs(-4)))
# result*digits

# Now follow these steps:

# 1. Type out what you expect R will return when all the lines are run at once.
# 2. Compare your expectations with each other.
# 3. Run the code and compare the results with your expectations.


wikifacts::wiki_randomfact()



# ------------------------------------------------
# Practice 2: Data types

# Consider the following code (don't run it):

number    <- as.logical(as.numeric('3'))
character <- is.character(typeof(7))
true      <- as.logical("FALSE")
false     <- as.logical(as.numeric(TRUE))

! TRUE & TRUE | TRUE

# Now follow these steps:

# 1. Type out what you expect R will return when all the lines are run at once.
# 2. Compare your expectations with each other.
# 3. Run the code and compare the results with your expectations.




# ------------------------------------------------
# Practice 3: Packages

# 1. Install the `TurtleGraphics` package.
# 2. Load the package.
# 3. Use the `turtle_init()` function to create a turtle.
# 4. Use `help(package = 'TurtleGraphics')` to learn about other functions to control your turtle.
# 5. Try drawing this shape with your turtle (hint: the length of each line is 50 units).
# 6. Compare your results and code with each other.

library(TurtleGraphics)
turtle_init()
turtle_move(distance = 25, direction = 'forward')
turtle_move(distance = 50, direction = 'backward')
turtle_forward(25)
turtle_turn(90, direction = 'left')
turtle_move(distance = 25, direction = 'forward')
turtle_move(distance = 50, direction = 'backward')
turtle_forward(25)
turtle_turn(90, direction = 'right')







1 + 10
2 + 9
3 + 8
4 + 7
5 + 6

















# ------------------------------------------------
# Practice 4: Polya's problem solving technique

# Polya practice 1: What's your degree worth?

# In the U.S., the average salary of a high school graduate is $35,256 / year, and the average salary of a GW graduate is $76,151. However, GW grads pay an average of $70,000 / year (tuition + fees + housing) for 4 years for their degree, and high school grads are working that entire time. Assuming immediate employment after graduation, how many years after graduating will the GW grad need to work until their net income (salary minus cost of education) surpasses that of the average high school graduate? (This is a _very_ rough estimate - you can assume away interest rates, inflation, promotions / salary raises, etc.)

# Take 5 minutes to restate the problem & devise a plan (don't carry it out!)



# 1) Restate the problem:
# Find number of years to make back money you paid for your degree and 
# the money that the hs grad is making.
salary_hs <- 35256
salary_gw <- 76151 
cost_of_education <- 70000*4

# 2) 
# First, find the gap 
gap <- cost_of_education + salary_hs*4

# Next, find annual income difference 
annual_income_diff <- salary_gw - salary_hs

# Divide annual income difference into gap
gap / annual_income_diff





# Polya practice 2: Prius vs. Camry

# Kevin is deciding between purchasing a Toyota Prius, 
# which sells for $27,600, and a Toyota Camry, which sells 
# for $24,000. He knows that based on his driving patterns he can get an average fuel economy of 55 miles per gallon (mpg) of gasoline in the Prius but only 28 mpg in the Camry on average. He also knows that he typically drives 12,000 miles each year, and the average price of gasoline is $2.20 / gallon.

# How long (in years) would Kevin have to drive the Prius for the money he saves in fuel savings to be greater than the price premium compared to the Camry?

# 1) How much does Kevin save in fuel each year, and 
#    when do these savings surpass the price premium 
price_camry <- 24000
price_prius <- 27600
mpg_camry   <- 28    # Mpg = miles per gallon
mpg_prius   <- 55
annual_miles <- 12000 # miles 
price_gas    <- 4 # dollars per gallon

# How much does Kevin save in fuel each year 
 
# get annual gallons consumed
gallons_consumed_prius <- annual_miles / mpg_prius
gallons_consumed_camry <- annual_miles / mpg_camry
annual_fuel_savings <- price_gas*(gallons_consumed_camry - gallons_consumed_prius)
    
# calculate the price premium 
price_premium <- price_prius - price_camry

# divide fuel savings into price premium
price_premium / annual_fuel_savings













