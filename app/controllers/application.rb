#
# $Id: application.rb 1 2007-09-12 17:47:33Z nicb $
#
# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include LoginSystem

  # Pick a unique cookie name to distinguish our session data from others'
  session :session_key => '_ECprojects_session_id'
end
