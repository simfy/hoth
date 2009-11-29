Hoth::ServiceDeployment.define do
  service_module :statistics_module do
    env :test, {
      :endpoint => Hoth::Endpoint.new(
        :host => 'localhost',
        :port => 3000,
        :transport_type => :json
      ),
      :mongrel_servers    => 2,
      :mongrel_start_port => 9001
    }

    path "services/search_service"
  end

  service_module :accounts_module do
    env :test, {
      :endpoint => Hoth::Endpoint.new(
        :host => 'localhost',
        :port => 9999,
        :transport_type => :bert
      ),
      :ernie_port => 9999
    }

    path "services/account_service"
  end
end