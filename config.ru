
# encoding: UTF-8
use Rack::Static,
  :urls => ["/img", "/js", "/css", "/fonts"],
  :root => "public"
  
headers = {
  'Content-Type'  => 'text/html',
  'Cache-Control' => 'public, max-age=86400'
}
  
manifestHeaders = {
  'Content-Type'  => 'application/x-web-app-manifest+json',
  'Cache-Control' => 'public, max-age=86400'
}

run lambda { |env|
  [
    200, headers, File.open('public/login.html', File::RDONLY)
  ]
}

map "/client" do
  run lambda { |env|
  [
    200, headers, File.open('public/client.html', File::RDONLY)
  ]
}
end

map "/config" do
  run lambda { |env|
  [
    200, headers, File.open('public/config.html', File::RDONLY)
  ]
}
end

map "/twittercallback" do
  run lambda { |env|
  [
    200, headers, File.open('public/twittercallback.html', File::RDONLY)
  ]
}
end

map "/facebookcallback" do
  run lambda { |env|
  [
    200, headers, File.open('public/facebookcallback.html', File::RDONLY)
  ]
}
end

map "/about" do
  run lambda { |env|
  [
    200, headers, File.open('public/about.html', File::RDONLY)
  ]
}
end

map "/whatsnew" do
  run lambda { |env|
  [
    200, headers, File.open('public/whatsnew.html', File::RDONLY)
  ]
}
end

map "/privacy" do
  run lambda { |env|
  [
    200, headers, File.open('public/privacy.html', File::RDONLY)
  ]
}
end

map "/manifest.webapp" do
  run lambda { |env|
  [
    200, manifestHeaders, File.open('public/manifest.webapp', File::RDONLY)
  ]
}
end
