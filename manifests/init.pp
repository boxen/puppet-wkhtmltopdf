# Public: Install wkhtmltopdf via homebrew
#
# Examples
#
#   include wkhtmltopdf
class wkhtmltopdf {
  include homebrew

  case $::macosx_productversion_major {
    '10.9': {
      warning('wkhtmltopdf is currently unsupported by OS X Mavericks due to a broken QT dependency, not actually installing it!')

      Package <| title == 'boxen/brews/wkhtmltopdf' |> {
        ensure => absent,
      }
    }

    default: {
      homebrew::formula { 'wkhtmltopdf':
        before => Package['boxen/brews/wkhtmltopdf'],
      }

      package { 'boxen/brews/wkhtmltopdf':
        ensure => '0.9.9-boxen1'
      }
    }
  }
}
