# BikeSharingDemand-Kaggle
A Machine Learning implemention of a linear regression model in R, based of the Kaggle Bike Sharing Demand challenge.
GOAL: CREATE A MODEL TO PREDICT BIKE RENTALS
Kaggle Challenge: https://www.kaggle.com/competitions/bike-sharing-demand/overview

# Data Exploration
If we want to predict count, lets understand some correlation values associated with count.

We could plot Temperature and Count, see if theres correlation there.
![tempvsdemand](https://github.com/chriscastillo1/BikeSharingDemand-Kaggle/assets/70082335/19694458-4589-4d17-8fe9-664122a97fad)

Lets then examine if theres a pattern in data relating to Count and the time.
Notice a seasonality for winter and summer. We can see though that its increasing in general, which may pose problems with using a linear regression model if the data is nonlinear.

![countvtimeseason](https://github.com/chriscastillo1/BikeSharingDemand-Kaggle/assets/70082335/99a50285-12cf-4618-affd-4454c3050114)

Notice for the box plot, a linear line cannot capture a nonlinear relationship. We know there is an issue simply because growth of rental count is due to the actual season itself.
![seasonality](https://github.com/chriscastillo1/BikeSharingDemand-Kaggle/assets/70082335/0f0ddd66-2d85-44ba-9763-9ec0d0c6bdcf)

# Bike Rentals by Hour depending on if its a working day or nonworking day
Working Day

![workingdays](https://github.com/chriscastillo1/BikeSharingDemand-Kaggle/assets/70082335/406ddd8e-1419-4a1b-bff4-a1ba936309d1)

Nonworking Day

![nonworking days](https://github.com/chriscastillo1/BikeSharingDemand-Kaggle/assets/70082335/31de7c81-f8bb-44b7-a431-ac26b9f7beb9)

# Building the Model
Due to the obvious nonlinearity of the data from our data exploration, we know a linear regressino model is not the best model to fit for this example.
However, what we can tell is when we do run the model, Season, Temp, Humdiity, and Hour all have significance in determining demand. With an Adjusted R Squared of 0.3339,
we would look into choosing another model to better fit the data.

![image](https://github.com/chriscastillo1/BikeSharingDemand-Kaggle/assets/70082335/c0b71093-3249-4ef3-a260-98b55911efe0)

![image](https://github.com/chriscastillo1/BikeSharingDemand-Kaggle/assets/70082335/59c3db21-a393-44c2-b72f-51d07469ccf9)
