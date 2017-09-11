MangoPay.configure do |c|
  c.preproduction = true
  c.client_id = ENV['MANGOPAY_CLIENT_ID']
  c.client_passphrase = ENV['MANGOPAY_SANDBOX_PASSPHRASE']
  c.log_file = File.join('mypath', 'mangopay.log')
  c.http_timeout = 10000
end
