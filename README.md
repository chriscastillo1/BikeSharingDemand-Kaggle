# BikeSharingDemand-Kaggle
A Machine Learning implemention of a linear regression model in R, based of the Kaggle Bike Sharing Demand challenge.
GOAL: CREATE A MODEL TO PREDICT BIKE RENTALS
Kaggle Challenge: https://www.kaggle.com/competitions/bike-sharing-demand/overview

# Data Exploration
If we want to predict count, lets understand some correlation values associated with count.

We could plot Temperature and Count, see if theres correlation there.
![tempvsdemand](https://github.com/chriscastillo1/BikeSharingDemand-Kaggle/assets/70082335/19694458-4589-4d17-8fe9-664122a97fad)

Lets then examine if theres a pattern in data relating to Count and the time.
![countvtimeseason](https://github.com/chriscastillo1/BikeSharingDemand-Kaggle/assets/70082335/99a50285-12cf-4618-affd-4454c3050114)

# Exploring Seasonality
Notice a seasonality for winter and summer. We can see though that its increasing in general, which may pose problems with using a linear regression model if the data is nonlinear.
![seasonality](https://github.com/chriscastillo1/BikeSharingDemand-Kaggle/assets/70082335/0f0ddd66-2d85-44ba-9763-9ec0d0c6bdcf)

# Bike Rentals by Hour depending on if its a working day or nonworking day
![nonworking days](https://github.com/chriscastillo1/BikeSharingDemand-Kaggle/assets/70082335/39176ab5-78da-418b-90e8-d0c45e3b25a0)

![nonworking days](https://github.com/chriscastillo1/BikeSharingDemand-Kaggle/assets/70082335/60d025d2-814c-46f3-ace2-cb8773327119)
