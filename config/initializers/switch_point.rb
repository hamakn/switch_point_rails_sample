SwitchPoint.configure do |config|
  config.define_switch_point :default,
    readonly: :"#{Rails.env}_slave",
    writable: :"#{Rails.env}_master"
end
