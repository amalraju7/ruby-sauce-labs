require 'report_builder'

time = Time.now.getutc
ReportBuilder.configure do |config|
 config.input_path = 'results/json'  # Ensure this path exists and is correct
 config.report_path = 'report/report'
 config.report_types = [:html]
 config.report_tabs = %w[Overview Features Scenarios Errors]
 config.report_title = 'Checkout Report'
 config.compress_images = false
 config.additional_info = {
   'Project name' => 'Login & Checkout',
   'Platform' => 'Website',
   'Report generated' => Time.now.getutc
 }
end

ReportBuilder.build_report
