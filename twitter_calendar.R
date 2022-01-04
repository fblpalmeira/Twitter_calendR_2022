library(calendR)
Sys.setlocale("LC_ALL", "English")
calendR()

# Vector of NA of the same length of the number of days of the year
events <- rep(NA, 365)

# Set the corresponding events
events[5] <- "#NationalBirdDay"
events[46] <- "#WorldWhaleDay"
events[101] <- "#WorldJaguarDay"
events[104] <- "#NationalDolphinDay"
events[117] <- "#WorldTapirDay" 
events[150] <- "#WorldOtterDay"
events[197] <- "#WorldSnakeDay"
events[210] <- "#GlobalTigerDay"
events[217] <- "#InternationalCloudedLeopardDay"
events[222] <- "#WorldLionDay"
events[244] <- "#VultureAwarenessDay"

events[274:292] <- "#Arachtober"
events[294:295] <- "#Arachtober"
events[297:301] <- "#Arachtober"
events[303:304] <- "#Arachtober"

events[293] <- "#SlothDay or #InternationalSlothDay" 
events[296] <- "#SnowLeopardDay"
events[302] <- "#NationalCatDay"
events[328] <- "#Catsgiving"
events[333] <- "#InternationalJaguarDay and #WorldAnteaterDay"
events[339] <- "#InternationalCheetahDay"
events[349] <- "#WorldMonkeyDay"

# Creating the calendar with a legend
png(file = "twitter_tags4.png", width = 1024, height = 768)
twitter<-calendR(title = "#TwitterWildlifeCommunity Calendar 2022", # Title
        title.size = 30, # Title size
        lty = 1,                   # Line type
        special.days = events,
        legend.pos = "right", legend.title = "Twitter hashtags")
library(ggplot2)
twitter+scale_fill_manual(values=c("#NationalBirdDay"="darkolivegreen", "#WorldWhaleDay"="greenyellow",	
            "#WorldJaguarDay"="lightyellow", "#NationalDolphinDay"="purple", 
            "#WorldTapirDay"="darkgrey","#WorldOtterDay"="lightblue", "#WorldSnakeDay"="red",
            "#GlobalTigerDay"="darkorange3", "#InternationalCloudedLeopardDay"="salmon", "#WorldLionDay"="slateblue1", 
            "#VultureAwarenessDay"="darkblue", "#Arachtober"="orange", "#SlothDay or #InternationalSlothDay"="pink",
            "#SnowLeopardDay"="green", "#NationalCatDay"="salmon", "#Catsgiving"="aquamarine", 
            "#InternationalJaguarDay and #WorldAnteaterDay"="yellow", "#InternationalCheetahDay"="black", 
            "#WorldMonkeyDay"="aquamarine4"))+
  theme(legend.key.size = unit(.6, units = "cm"), # Keys size
        legend.text = element_text(size = 12))   # Text size
dev.off()

