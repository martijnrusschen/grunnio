# Miniskirt factories go here!
# https://github.com/stephencelis/miniskirt

Factory.define :account do |f|
  # f.name 'johndoe%d'
  f.email 'johndoe%d@example.com'
  f.password ('foobarfoo')
end

Factory.define :company do |f|
  f.name 'company %d'
end

# Factory.define :admin do |f|
#   f.name 'admin%d'
#   f.email '%{login}@example.com'
#   f.password f.password_confirmation('foobar')
# end

# Factory.define :editor do |f|
#   f.name 'editor%d'
#   f.email '%{login}@example.com'
#   f.password f.password_confirmation('foobar')
# end
