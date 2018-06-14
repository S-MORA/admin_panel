class ApplicationController < ActionController::Base
  layout :resolve_layout

 # ...

 private

 def resolve_layout
   puts controller_name
   case controller_name
   when "home", 'registrations'
     "application"
   else
     "logged_in"
   end
 end
end
