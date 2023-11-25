# https://docs.gitlab.com/omnibus/settings/configuration.html

external_url 'https://git.source.example.com'

# https://docs.gitlab.com/omnibus/settings/nginx.html
nginx['ssl_certificate'] = "/etc/pki/tls/certs/git.source.example.com.pem"
nginx['ssl_certificate_key'] = "/etc/pki/tls/private/git.source.example.com.key"

# https://docs.gitlab.com/omnibus/settings/environment-variables.html
gitlab_rails['env'] = {
    "http_proxy" => "http://gateway.source.example.com:3128",
    "https_proxy" => "http://gateway.source.example.com:3128",
    "no_proxy" => "localhost,127.0.0.1,example.com"
}
