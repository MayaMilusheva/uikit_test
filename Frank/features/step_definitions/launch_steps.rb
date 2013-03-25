def app_path
  ENV['APP_BUNDLE_PATH'] || (defined?(APP_BUNDLE_PATH) && APP_BUNDLE_PATH)
end

def app_sdk
  nil
end

def app_version
  if ENV['FRANK_TEST_IPAD'].nil? then 'iphone' else 'ipad' end
end

Given /^I launch the app$/ do
  # latest sdk and iphone by default
  launch_app app_path, app_sdk, app_version
end

Given /^I launch the app using iOS (\d\.\d)$/ do |sdk|
  # You can grab a list of the installed SDK with sim_launcher
  # > run sim_launcher from the command line
  # > open a browser to http://localhost:8881/showsdks
  # > use one of the sdk you see in parenthesis (e.g. 4.2)
  launch_app app_path, sdk
end

Given /^I launch the app using iOS (\d\.\d) and the (iphone|ipad) simulator$/ do |sdk, version|
  launch_app app_path, sdk, version
end
