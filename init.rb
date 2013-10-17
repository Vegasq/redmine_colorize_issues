require 'redmine'
require_dependency 'custom_js_and_css/hooks'

Redmine::Plugin.register :redmine_colorize_issues do
  name 'ColorizeIssues'
  author 'Nikolay Yakovlev'
  description 'Colorize issues tab'
  version '0.0.1'
  url 'http://github.com/vegasq/redmine_colorize_issues'
  author_url 'http://github.com/vegasq/redmine_colorize_issues'
end
