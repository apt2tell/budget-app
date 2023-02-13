class DeviseMailer < ApplicationMailer
  include Roadie::Rails::Automatic
  layout 'mailer'
end
