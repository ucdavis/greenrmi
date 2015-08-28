# config.ru
require "rack"
require "middleman/rack"
require "./custom_404"

# This can be whatever, just make sure it points at a file that Tilt can render like Haml, Erb, etc
# Note that __dir__ is new in Ruby 2.0+
not_found_path = File.join(__dir__, "source/404.html.haml")

use Custom404, not_found_path

run Middleman.server