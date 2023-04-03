

library(dplyr)


### year cleaning 

stamford %>%group_by(CrashDateYear) %>% count() %>% arrange(desc(n))

colnames(accidents_per_year)[2]='NumberofCrashes'
colnames(accidents_per_year)[1]='Year'

  
accidents_per_year

## ggplot simple code

year_p <- ggplot(data = accidents_per_year) +
    geom_bar(mapping = aes(x = CrashDateYear, y = NumberofCrashes))

ggplotly(year_p)

### colored bar chart
Crashes_Per_Year <- ggplot(data=accidents_per_year,aes(x=Year,y=NumberofCrashes, fill=Year)) +
  geom_bar(stat='identity')




stamford %>%group_by(CrashDateYear) %>% count() %>% arrange(desc(n))


Crashes_Per_Year + ggtitle(mapping=aes("Stamford, CT: Accidents per Year")) +
  xlab("Year") + ylab("Crash Count")
  
ggplotly(Crashes_Per_Year)
