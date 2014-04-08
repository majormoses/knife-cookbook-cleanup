#
# Author:: Heavy Water Operations (<support@hw-ops.com>)
# Copyright:: Copyright (c) 2014 Heavy Water Operations, LLC.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'chef/knife'

class Chef
  class Knife
    class CookbookCleanup < Knife

      deps do
        require 'chef/knife/bootstrap'
        require 'chef/cookbook_version'
        Chef::Knife::Bootstrap.load_deps
      end

      banner "knife cookbook cleanup"

      def run
        all_cookbooks = rest.get_rest('/cookbooks?num_versions=all')
        drop_cookbooks = Hash.new
        keep_cookbooks = Hash.new
        all_cookbooks.each do |cb|
          cookbook_name = cb[0]
          sorted_versions = cb[1]["versions"].map{ |v| v["version"] }.sort{ |x, y|Gem::Version.new(x) <=> Gem::Version.new(y) }
          keep_versions = sorted_versions.pop
          dropped_versions = sorted_versions
          drop_cookbooks[cookbook_name] = dropped_versions
          keep_cookbooks[cookbook_name] = keep_versions
        end
        keep_cookbooks.delete_if { |k, v|v.empty? }
        drop_cookbooks.delete_if { |k, v|v.empty? }

        if drop_cookbooks.empty?
          ui.info "No old cookbook versions were found"
          exit 0
        end

        ui.msg ""
        ui.msg "The following cookbook versions will remain on the chef server:"
        ui.msg ""
        ui.msg ui.output(keep_cookbooks)
        ui.msg ""
        ui.msg "The following cookbook versions will be deleted:"
        ui.msg ""
        ui.msg ui.output(drop_cookbooks)
        ui.msg ""
        ui.confirm("Do you really want to delete these cookbooks? (Y/N) ", false)

        drop_cookbooks.each do |cookbook, versions|
          versions.each do |version|
            rest.delete_rest("cookbooks/#{cookbook}/#{version}")
            ui.info("Deleted cookbook  #{cookbook.ljust(25)} [#{version}]")
          end
        end
      end
    end
  end
end
