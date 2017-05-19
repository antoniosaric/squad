module EventHelper

  def api
    token = ENV['EB_TOKEN']
    url = "https://www.eventbriteapi.com/v3/events/search/?token=#{token}&location.address=sanfrancisco&q=hackathon"
    returnjson = HTTParty.get(url)
    html = format_html(returnjson)
    code = format_url(html)
    #pup = "https://maps.googleapis.com/maps/api/directions/json?origin=#{origin}&destination=#{destination}"
    return code

  end

  def format_url(data)
    "<div class='event-search'>" + data + "</div>"
  end

  def format_html(input)

    html = ""

    input["events"].each do |inp|
      eventname = inp['name']['text']
      eventlink = inp['url']
      description = inp['description']['text']

      html += "<h5><a href="+ eventlink +">" + eventname + "</a>
      <form method='get' action='/teams/new'>
      <button type='submit'>Join Team</button> 
      </form></h5>
      <p>"+ description + "</p><br>"
    end
    return html
  end 
end