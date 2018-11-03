Rails.application.routes.draw do
  resources :students, only: :index
  get '/students', to: 'students#index'
  get '/students/new', to: 'students#new', as: 'new_student'
  post '/students', to: 'students#create'
  get '/students/:id', to: 'students#show', as: 'student'


end


# Instructions
# The two specs for this lab that are currently failing are located within the form page feature in specs/features/student_spec.rb.
#
# At a high level, you need to build a form to create a new student, have the form redirect back to the new view template, and print out the form params to the screen. Below are a few items to keep in mind:
#
# Draw a new and create route for the students resource
#
# Print out the student value to the view template page
#
# Keys to remember
# Look at the tests to see which field values you should be using
#
# Make sure to use the form_tag helpers
