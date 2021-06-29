#GGPlot

rm(list=ls())
#View(mpg)
dev.off()
data(mpg)

library(ggplot2)
ggplot(mpg, aes(hwy,cty))+geom_point(aes(col=factor(cyl)))+
    geom_smooth(method="lm")+ #linear model
    facet_grid(.~cyl)+
    xlab("Highway miles per gallon")+
    ylab("City miles per gallon")

ggplot(mpg,aes(x=manufacturer,y=hwy,
               fill=factor(manufacturer)))+
  geom_boxplot()+
  geom_jitter()+
  labs(title="Boxplot for Hwy per manufacturer",x="Manufacturer",y="Highway milage")+
  theme_bw()+coord_flip()+ #coordinates were flipped
  theme(legend.position = "none")

g <- ggplot(mpg, aes(class, cty))
g + geom_violin(aes(fill=class)) + 
  labs(title="Violin plot", 
       subtitle="City Mileage vs Class of vehicle",
       caption="Source: mpg",
       x="Class of Vehicle",
       y="City Mileage")

g <- ggplot(mpg, aes(displ)) + scale_fill_brewer(palette = "Spectral")
g + geom_histogram(aes(fill=class), 
                   bins=10, 
                   col="black", 
                   size=.1) +   # change number of bins
  labs(title="Histogram with Fixed Bins", 
       subtitle="Engine Displacement across Vehicle Classes",
       x="enginer displacement (m)",
       y="Frequency count") 

data("midwest")
gg <- ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(aes(col=state, size=popdensity)) + 
  geom_smooth(method="loess", se=F) + 
  xlim(c(0, 0.1)) + 
  ylim(c(0, 500000)) + 
  labs(subtitle="Area Vs Population", 
       y="Population", 
       x="Area", 
       title="Scatterplot", 
       caption = "Source: midwest")
plot(gg)

g <- ggplot(mpg, aes(cty))
g + geom_density(aes(fill=factor(cyl)), alpha=0.8) + 
  labs(title="Density plot", 
       subtitle="City Mileage Grouped by Number of cylinders",
       caption="Source: mpg",
       x="City Mileage",
       fill="# Cylinders")+
  theme_bw()

#Density 2D
gg <- ggplot(faithful,aes(x=eruptions,y=waiting))
gg + stat_density_2d(aes(fill=..level..),
                     geom="polygon",color="black")+
  geom_smooth(method="lm",linetype=2,color="red")+
  scale_fill_continuous(low="green",high="red")+
  geom_point() +
  theme_bw()

#maps
library(maps)
states <- map_data("state")
ggplot(data = states)+
  geom_polygon(aes(x=long,y=lat,fill=region),
               color="black")+
  coord_fixed(1.3)+
  guides(fill=FALSE)

#
counties <- map_data("county")
SC_counties <- subset(counties,region == "south carolina")
ggplot(data = SC_counties)+
  geom_polygon(aes(x=long,y=lat,fill=subregion),
               color="black")+
  coord_fixed(1.3)+
  guides(fill=FALSE)
