require "spec_helper"


module JasperRuports

  describe ReportRunner do

    let(:runner) { ReportRunner.new(File.expand_path("../../fixtures",__FILE__)) }

    before do
      @valid_jrxml = "test_blank.jrxml"
    end

    describe "#generate" do

      it "should load and fill a report" do

        report_object = mock("mock_report_object")
        report_params = { "foo"=>"bar" }
        
        JRLoader.should_receive(:loadObject).with(
          File.expand_path("../../fixtures/#{@valid_jrxml}",__FILE__)
        ).and_return(report_object)

        JasperFillManager.should_receive(:fillReport).with(report_object, HashMap.new(report_params) )

        runner.generate( @valid_jrxml, report_params )
        
      end

    end

  end

end