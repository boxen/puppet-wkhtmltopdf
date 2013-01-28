# Public: Install wkhtmltopdf via homebrew
#
# Examples
#
#   include wkhtmltopdf
class wkhtmltopdf {
  include homebrew

  homebrew::formula { 'wkhtmltopdf':
    before => Package['boxen/brews/wkhtmltopdf'],
  }

  package { 'boxen/brews/wkhtmltopdf':
    ensure => '0.9.9-boxen1'
  }
}
