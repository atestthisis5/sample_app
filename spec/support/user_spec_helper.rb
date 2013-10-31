

def blank_string
  ' '
end

def string_of_length_greater_than(length)
  "a" * (length + 1)
end

def invalid_email_addresses
  %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
end

def valid_email_addresses
  %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
end

def create_user_with_same_email(user)
  user_with_same_email = user.dup
  user_with_same_email.email = user.email.upcase
  user_with_same_email.save
end

def create_mixed_case_email
  "Foo@ExAMPle.CoM"
end

def save_user_with_mixed_case_email(user, mixed_case_email)
  user.email = mixed_case_email
  user.save
  user.reload
end

def different_password_than(password)
  password + '1'
end

def fewer_chars_than(length)
  'a' * (length-1)
end

