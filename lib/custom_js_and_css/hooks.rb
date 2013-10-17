class Hooks  < Redmine::Hook::ViewListener

  ASSETS = File.dirname(__FILE__) + '/../../assets'
  PLUGIN = 'redmine_colorize_issues'

  # Custom styles
  def view_layouts_base_html_head(context = { })
    if File.file?( "#{ASSETS}/stylesheets/smart_issue_list.css" )
      stylesheet_link_tag "smart_issue_list.css", :plugin => PLUGIN
    end
  end

  # Call javascript if found corresponding file for every project
  def view_layouts_base_body_bottom(context = { })
    if File.file?( "#{ASSETS}/javascripts/smart_issue_list.js")
      javascript_include_tag "smart_issue_list.js", :plugin => PLUGIN
    end
  end

end
