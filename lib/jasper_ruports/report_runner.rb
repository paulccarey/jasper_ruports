require 'java'

Dir.glob( File.join( "lib","jasper" , "*.jar") ).each do | lib |
  require lib
end

java_import "net.sf.jasperreports.engine.util.JRLoader"
java_import "net.sf.jasperreports.engine.JasperFillManager"
java_import "java.util.HashMap"

module JasperRuports
  class ReportRunner

    @reports_dir

    def initialize(reports_dir)

      @reports_dir=reports_dir
      
    end

    def generate(report_name,report_parameters)
      return JasperFillManager.fillReport( load_report(report_name), java_prepare_params(report_parameters))
    end

    def java_prepare_params(ruby_params)
      return ruby_params.nil? ? HashMap.new : HashMap.new(ruby_params)
    end

    def load_report(report_name)
      return JRLoader.loadObject( File.join(@reports_dir,report_name).to_s )
    end

  end
end
