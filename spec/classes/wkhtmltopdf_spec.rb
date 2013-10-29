require 'spec_helper'

describe 'wkhtmltopdf' do
  let(:default_facts) do
    {
      :boxen_home => '/opt/boxen',
      :boxen_user => 'testuser',
    }
  end

  context "10.8" do
    let(:facts) { default_facts.merge(:macosx_productversion_major => '10.8')}

    it do
      should contain_homebrew__formula('wkhtmltopdf').
        with_before('Package[boxen/brews/wkhtmltopdf]')

      should contain_package('boxen/brews/wkhtmltopdf').with({
        :ensure => '0.9.9-boxen1'
      })
    end
  end

  context "10.9" do
    let(:facts) { default_facts.merge(:macosx_productversion_major => '10.9')}

    it do
      should_not contain_package('boxen/brews/wkhtmltopdf')
    end
  end
end
