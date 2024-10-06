# start the suite with these values.
*** Variables ***
${name}  Olga
${color}  Red
${sport}   Rock Climbing


*** Test Cases ***
Using Variables

  # Log the message using variables
  Log to Console   \nMy name is ${name}. My favorite color is ${color}. My favorite sport is ${sport}.

  ${name}=  Set Variable  Dmitri
  ${color}=  Set Variable  Green
  ${sport}=  Set Variable  Yoga

  # Log the message using variables
  Log to Console   \nMy name is ${name}. My favorite color is ${color}. My favorite sport is ${sport}.


