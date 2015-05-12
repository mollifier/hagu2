require 'active_support/core_ext/string/inflections'

guard :rspec, cmd: 'bin/rspec' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }

  watch(%r{^app/(.+)\.rb$})                           { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/controllers/(.+)_(controller)\.rb$})  { |m| ["spec/routing/#{m[1]}_routing_spec.rb", "spec/requests/#{m[1]}_spec.rb", "spec/requests/#{m[1]}_index_spec.rb", "spec/requests/#{m[1]}_create_spec.rb", "spec/requests/#{m[1]}_show_spec.rb", "spec/requests/#{m[1]}_update_spec.rb", "spec/requests/#{m[1]}_destroy_spec.rb"] }
  watch(%r{^app/views/(.+)/.+.jbuilder$})             { |m| ["spec/requests/#{m[1]}_spec.rb", "spec/requests/#{m[1]}_index_spec.rb", "spec/requests/#{m[1]}_create_spec.rb", "spec/requests/#{m[1]}_show_spec.rb", "spec/requests/#{m[1]}_update_spec.rb", "spec/requests/#{m[1]}_destroy_spec.rb"] }
  watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
  watch(%r{^spec/factories/(.+)\.rb$})                { |m| ["spec/models/#{m[1].singularize}_spec.rb", "spec/requests/#{m[1]}_spec.rb"] }
  watch('config/routes.rb')                           { "spec/routing" }
  watch('app/controllers/application_controller.rb')  { "spec/requests" }
end

guard :rubocop, all_on_start: false, cli: '--rails' do
  watch(%r{(.+\.rb)$}) { |m| m[1] }
  watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
end
