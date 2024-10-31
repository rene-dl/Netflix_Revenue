SELECT *
FROM NetflixProject..userbase

-- Looking for the number of users from each country

SELECT country, COUNT(user_id) AS number_users
FROM NetflixProject..userbase
GROUP BY country
ORDER BY number_users DESC

-- Looking for the revenue from each country

SELECT country, SUM(monthly_revenue) AS total_revenue
FROM NetflixProject..userbase
GROUP BY country
ORDER BY total_revenue DESC

-- Looking for the revenue from each subcription type by country

SELECT country, subscription_type, SUM(monthly_revenue) AS total_revenue
FROM NetflixProject..userbase
GROUP BY country, subscription_type
ORDER BY total_revenue DESC, country

-- Looking for the number of users from each subcription type

SELECT subscription_type, COUNT(subscription_type) AS total_subs
FROM NetflixProject..userbase
GROUP BY subscription_type
ORDER BY total_subs DESC

-- Looking for the revenue from each subcription type

SELECT subscription_type, SUM(monthly_revenue) AS subs_revenue
FROM NetflixProject..userbase
GROUP BY subscription_type
ORDER BY subs_revenue DESC

-- Looking for the number of users from each gender

SELECT gender, COUNT(gender) AS total_gender
FROM NetflixProject..userbase
GROUP BY gender
ORDER BY total_gender DESC

-- Looking for the revenue of each subscription type by genders

SELECT gender, subscription_type, SUM(monthly_revenue) AS gender_revenue
FROM NetflixProject..userbase
GROUP BY gender, subscription_type
ORDER BY gender, gender_revenue DESC

-- Looking for the number of users from each device

SELECT device, COUNT(device) AS total_device
FROM NetflixProject..userbase
GROUP BY device
ORDER BY total_device DESC

-- Looking for the revenue from each device

SELECT device, SUM(monthly_revenue) AS device_revenue
FROM NetflixProject..userbase
GROUP BY device
ORDER BY device_revenue DESC

-- Looking for the number of users from each age

SELECT age, COUNT(age) AS total_age
FROM NetflixProject..userbase
GROUP BY age
ORDER BY total_age DESC

-- -- Looking for the average age of users

SELECT AVG(age) AS average_age
FROM NetflixProject..userbase

-- Looking for the revenue from each age

SELECT age, SUM(monthly_revenue) AS age_revenue
FROM NetflixProject..userbase
GROUP BY age
ORDER BY age_revenue DESC
