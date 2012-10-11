require 'spec_helper'

describe 'wkhtmltopdf' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen'
    }
  end
  it do
    should contain_package('boxen/brews/wkhtmltopdf').with({
      :ensure => '0.9.9-boxen1'
    })
  end
end
