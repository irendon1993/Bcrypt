# Use case for student class - Authentication systems in web applications
# For now think of students as users
# Done with usernames and passwords
# Security for user information very important
# Passwords are virtually never stored in their string forms
# Hashed digests are stored in the db's
# A popular hashing algorithm is MD5 - bcrypt
# Creates a hash digest of the string

require 'bcrypt'

my_password = BCrypt::Password.create("my password")
#=> "$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey"

puts my_password
puts my_password.version              #=> "2a"
puts my_password.cost                 #=> 12
puts my_password == "my password"     #=> true
puts my_password == "not my password" #=> false

# my_password = BCrypt::Password.new("$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey")
# my_password == "my password"     #=> true
# my_password == "not my password" #=> false

new_password = BCrypt::Password.create("Test")
puts new_password

new_password = BCrypt::Password.new("$2a$12$ki58rMxLeNzQv9RlAvX.gO6bG39cwEx9vDwGopHjX5c5.LMvlJeWO")
if new_password == "Test"
 puts "Nice"
else 
  puts "Damn"
end
