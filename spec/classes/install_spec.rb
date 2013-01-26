require 'spec_helper'

describe 'icinga::install' do
  it { should contain_package( 'icinga' ).with( { :ensure => 'installed' } ) }
end

