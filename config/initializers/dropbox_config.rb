require 'dropbox_sdk'
DROPBOX_APP_KEY = "tiex3hkacp5g17r" #replace with your own app key
DROPBOX_APP_KEY_SECRET = "c9hpn18olygq5v3"
DROPBOX_APP_MODE = "app_folder"
OAUTH2_ACCESS_TOKEN = "5RqQ_lo4fCMAAAAAAAASRlfCvzvUpCUFctCqTnnS5L7wzSMuQf6E4KQ-GaJNNG9u"


# flow = DropboxOAuth2FlowNoRedirect.new(DROPBOX_APP_KEY, DROPBOX_APP_KEY_SECRET)
# authorize_url = flow.start()
#   puts '1. Go to: ' + authorize_url
#   puts '2. Click "Allow" (you might have to log in first)'
#   puts '3. Copy the authorization code'
#   print 'Enter the authorization code here: '
#   code = gets.strip
# access_token, user_id = flow.finish(code)
# client = DropboxClient.new(access_token)
# puts "linked account:", client.account_info().inspect