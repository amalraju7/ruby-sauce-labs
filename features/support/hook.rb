# Before hook - Initialize browser
Before do
  $browser = Selenium::WebDriver.for :chrome
end

# After hook - Handle scenario failures and take screenshots
After do |scenario|
  if scenario.failed?
    # Ensure the directory exists before saving the screenshot
    screenshot_dir = "screenshots"
    Dir.mkdir(screenshot_dir) unless Dir.exist?(screenshot_dir)

    # Generate a valid filename
    screenshot_file = "#{screenshot_dir}/#{sanitize_filename(scenario.name)}.png"

    # Save the screenshot
    $browser.save_screenshot(screenshot_file)
  end

  # Quit the browser
  $browser.quit
end

# At exit - Build the report
at_exit do
  ReportBuilder.build_report
end

# Utility method to sanitize filenames (e.g., replace invalid characters)
def sanitize_filename(filename)
  filename.gsub(/[\/\:\*\?"<>\|]/, '_')
end
