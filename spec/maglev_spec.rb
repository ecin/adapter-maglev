require 'helper'
require 'adapter/maglev'

describe "Maglev adapter" do
  before do
    @client = Maglev::PERSISTENT_ROOT
    @adapter = Adapter[:maglev].new(@client)
    @adapter.clear
  end

  let(:adapter) { @adapter }
  let(:client)  { @client }

  it_should_behave_like 'a marshaled adapter'

  end
end