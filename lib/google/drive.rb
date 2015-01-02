# require 'googleauth'
# require 'google/apis/drive_v2'

require 'dotenv'
Dotenv.load

# require 'tempfile'
require 'googleauth'
require 'google/apis/drive_v2'

module Google
  class Drive


    Drive = Google::Apis::DriveV2

    drive = Drive::DriveService.new
    drive.authorization = Google::Auth.get_application_default([Drive::AUTH_DRIVE])

    # # Get the environment configured authorization
    # scopes = ['https://www.googleapis.com/auth/cloud-platform', 'https://www.googleapis.com/auth/compute']
    # authorization = Google::Auth.get_application_default(scopes)
    #
    # # Add the the access token obtained using the authorization to a hash, e.g
    # # headers.
    # some_headers = {}
    # authorization.apply(some_headers)
    #
    # Drive = Google::Apis::DriveV2 # Alias the module
    # drive = Drive::DriveService.new
    # drive.authorization = Google::Auth.get_application_default([Drive::AUTH_DRIVE])
  end
end