require 'spec_helper'

describe 'icinga' do
  it { should include_class( 'icinga::install' )   }
  it { should include_class( 'icinga::configure' ) }
  it { should include_class( 'icinga::service' )   }
end

