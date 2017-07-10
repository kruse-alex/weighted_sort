# calculate max visits
max_visit = max(dataset$Page_Impressions)
dataset$prop_visits = dataset$Page_Impressions/max_visit
 
# calculate average weighted bounce rate
weighted_avg_br = sum(dataset$Page_Impressions * dataset$Bounce_Rate)/sum(dataset$Page_Impressions)
 
# calculate Estimated True Value (ETV)
dataset$ETV = (dataset$prop_visits*dataset$Bounce_Rate)+((1-(dataset$prop_visits))*weighted_avg_br)
