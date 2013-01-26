require 'spec_helper'

describe 'icinga::service' do
  it do
    should contain_service( 'icinga' ).with( {
      :ensure => 'running',
      :enable => true
    } )
  end
end

