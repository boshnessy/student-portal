require 'Unirest'


# sign up
  # response = Unirest.post(
  #   "http://localhost:3000/users",
  #   parameters: {
  #     name: "User",
  #     email: "user@new.com",
  #     password: "password",
  #     password_confirmation: "password"
  #   }
  # )
  # user = response.body
  


# log in 
response = Unirest.post(
  "http://localhost:3000/user_token",
  parameters: {
    auth: {
      email: "user@new.com",
      password: "password"
    }
  }
)

# Save the JSON web token from the response
jwt = response.body["jwt"]
# Include the jwt in the headers of any future web requests
Unirest.default_header("Authorization", "Bearer #{jwt}")
