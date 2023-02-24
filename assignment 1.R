library(rvest)
library(dplyr)
link<-'https://www.howzat.com/blog/fantasy-football/best-football-player-in-the-world'
#allowbility
web<-read_html(link)
name<-web%>%html_nodes("tr+ tr td:nth-child(2)")%>%html_text()
#view name list
View(name)
club<-web%>%html_nodes("tr+ tr td:nth-child(3)")%>%html_text()
View(club)
topgoals<-web%>%html_nodes("tr+ tr td:nth-child(4)")%>%html_text()
View(topgoals)
howzat<-data.frame(name,club,topgoals)
View(howzat)
write.csv(howzat,"top football player data.csv")
