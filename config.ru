use Rack::Static,


:urls => ["/img", "/js", "/css", "/test"],
:root => "ARIA_Project"

run lambda { |env|
  [
      200,
      {
          #'Content-Type'  => 'text/html',
          'Cache-Control' => '., max-age=86400'
      },
      File.open('ARIA_Project/index_hk1.html', File::RDONLY)
  ]
}
