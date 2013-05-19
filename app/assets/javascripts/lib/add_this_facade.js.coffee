# doc sources:
#   endpoints http://support.addthis.com/customer/portal/articles/381265-addthis-sharing-endpoints
#   style     http://support.addthis.com/customer/portal/articles/381266-services-api-beta

addthis_config =
  endpoint: "http://api.addthis.com/oexchange/0.8/forward/"
  endpoint_sufix: "/offer"
  pubid: "ra-5122e87215f8e45d"

  default_services: ["facebook", "twitter", "email"]
  default_data:
    url: "http://alphadeville.com"
    title: "Alphadeville"
    description: "Agencia de Investigacion, Diseño y Desarrollo"
    email_template: "alphadeville"
  window_options:
    width: 800
    height: 300

addthis =
  get_url_attr_for: ( attr, shr_ops ) ->
    if shr_ops["#{attr}"] then "#{attr}=#{shr_ops["#{attr}"]}" else "#{attr}=#{addthis_config.default_data["#{attr}"]}"

  button_by_service: ( service, share_options = { url: null, title: null, description: null } ) ->
    pubid = "pubid=#{addthis_config.pubid}"
    ct = "ct=0"
    endpoint_sufix = "#{addthis_config.endpoint_sufix}?#{pubid}&#{ct}"
    url = @get_url_attr_for("url", share_options)
    title = @get_url_attr_for("title", share_options)
    description = @get_url_attr_for("description", share_options)
    email_template = @get_url_attr_for("email_template", share_options)

    if service == "twitter"
      text = "text=#{share_options.title}"
      "<a href=\"#{addthis_config.endpoint}#{service}#{endpoint_sufix}&#{url}&#{text}&related=pickista\" class=\"addthis_service_icon icon_#{service}\"></a>"
    else  if service == "email"
      "<a href=\"#{addthis_config.endpoint}#{service}#{endpoint_sufix}&#{url}&#{title}&#{description}&#{email_template}\" class=\"addthis_service_icon icon_#{service}\"></a>"
    else
      "<a href=\"#{addthis_config.endpoint}#{service}#{endpoint_sufix}&#{url}&#{title}&#{description}\" class=\"addthis_service_icon icon_#{service}\"></a>"

  get_html_buttons: ( share_options = {} ) ->
    html = ""
    for service in addthis_config.default_services
      html = "#{html}#{@button_by_service(service, share_options)}"
    html

  assign_events_binding_to: ( container ) ->
    container.find('.addthis_service_icon').on "click", (e)->
      e.preventDefault()
      window_width = if $(this).hasClass("icon_email") then 800 else addthis_config.window_options.width
      window_height = if $(this).hasClass("icon_email") then 800 else addthis_config.window_options.height

      left = (screen.width/2)-(window_width/2)
      top = (screen.height/2)-(window_height/2)
      window_features = "toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=no, copyhistory=no, width=#{window_width}, height=#{window_height}, top=#{top}, left=#{left}"
      window.open($(this).attr('href'), "Pickista Sharing", window_features)

  buttons_in: ( container, share_options = {} ) ->
    container.html @get_html_buttons(share_options)
    @assign_events_binding_to container

window.addthis_config = addthis_config
window.addthis = addthis
