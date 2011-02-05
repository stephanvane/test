class RequestMailer < ActionMailer::Base
  default :from => "from@example.com"
  
  def request_to_boat_company(request)
    @request = request
    mail(:to => request.requested.boat_company.email,
         :subject => 'test')
  end
end
