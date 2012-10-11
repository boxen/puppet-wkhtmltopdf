# Public: Install wkhtmltopdf via homebrew
#
# Examples
#
#   include wkhtmltopdf
class wkhtmltopdf {
  require homebrew

  package { 'boxen/brews/wkhtmltopdf':
    ensure => '0.9.9-boxen1'
  }
}
