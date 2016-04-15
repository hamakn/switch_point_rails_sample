SwitchPoint.configure do |config|
  config.define_switch_point :default,
    readonly: :"#{Rails.env}_slave",
    writable: :"#{Rails.env}_master"

  # activate switch_point auto_writable only in rails console
  Rails::Application.console do
    config.auto_writable = true
  end
end
