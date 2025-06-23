# frozen_string_literal: true

# Pagy initializer file
# See https://ddnexus.github.io/pagy/docs/api/pagy

# Load the bootstrap extra to enable the pagy_bootstrap_nav helper
require 'pagy/extras/bootstrap'

# Set the default number of items per page
Pagy::DEFAULT[:items] = 10