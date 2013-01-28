require 'spec_helper'

describe 'wkhtmltopdf' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :boxen_user => 'testuser'
    }
  end

  it do
    should contain_homebrew__formula('wkhtmltopdf').
      with_before('Package[boxen/brews/wkhtmltopdf]')

    should contain_package('boxen/brews/wkhtmltopdf').with({
      :ensure => '0.9.9-boxen1'
    })
  end
end
