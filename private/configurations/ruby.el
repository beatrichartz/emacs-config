(require 'bundler)
(setq rspec-use-rake-when-possible nil)
(setq rspec-command-options "--color --format d")

(setq feature-cucumber-command "bundle exec cucumber -r features {options} {feature}")
