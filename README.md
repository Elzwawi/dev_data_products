dev_data_products
=================
## Purpose of the application

This app estimates the average daily intake of calories [in kCal]. For simplicity which depends on:

1. Age of the person [years]
2. Weight of the person [kilograms]
3. Height of the person [centimetres]
4. Gender of the person [male or female]

## Formula of the estimation

- The average calory intake is estimated based on Harris - Benedict equation (http://en.wikipedia.org/wiki/Harris-Benedict_equation)

- For females:

BMR = 655.1 + 9.6 * weight [kg] + 1.8 * height [cm] - 4,77 * age [years]

- For males:

BMR = 66.5 + 13.8 * weight [kg] + 5.0 * height [cm] - 6.8 * age [years]

where BMR is basal metabolic rate in kCal


## Examples

- for a male with weight = 70 kg, height = 175 cm and age = 30 years, we get BMR = 1668.2 kCal

- for a female with weight = 65 kg, height = 170 cm and age = 30 years, we get BMR = 1427.5 kCal


## Comments

- For extreme values the Harris - Benedict equation does not give reliable results.

- Given that other factors are fixed, females generally take less calories than males

- A person whoperforms significantly more physical activity usually has a higher calory intake. To account for that, the BMR should be multiplied by a coefficent > 1. 
