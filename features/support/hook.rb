Before do
    $browser = Selenium::WebDriver.for :chrome
end

After do |scenario|
  if scenario.failed?
    screenshot = "screenshots/#{scenario.name}.png"
    $browser.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Screenshot')
  end
  $browser.quit
end

at_exit do
  ReportBuilder.build_report
end