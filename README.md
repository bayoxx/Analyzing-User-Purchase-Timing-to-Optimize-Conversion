**Project Title:**  
**Analyzing User Purchase Timing to Optimize Conversion: A Product Analytics Dashboard**

---

### **Project Description:**
This project centers on analyzing user purchase behavior on a website, specifically focusing on the time it takes users to make their first purchase from their initial session. By examining this “time-to-purchase” metric, this analysis aims to reveal patterns and trends in user engagement and purchasing behaviour to support strategic decisions that enhance user experience and improve conversion rates. 

---

### **Objective:**
The primary objective of this project is to determine the daily dynamics of time-to-purchase across different users, identify any significant patterns or peaks in purchasing behaviour, and provide actionable insights for optimizing conversion rates. The analysis aims to uncover trends that could indicate high-value engagement times, user hesitation points, and potential areas for improving the purchase flow.

---

### **Methodology:**
1. **Data Preparation:** 
   - Collected user data from sessions and purchase events, focusing on metrics like timestamps, user IDs, and purchase revenue over three months (November 2020 - January 2021).
   - Calculated the time-to-purchase for each user as the duration between the session start time and their first purchase on the same day.

2. **Segmentation & Aggregation:**
   - Segmented users by time-to-purchase intervals (e.g., <1 hour, 1-5 hours, etc.) and by daily, weekly, and monthly periods.
   - Aggregated data by metrics such as the average time-to-purchase, number of orders, and purchase revenue for each segment.

3. **Analysis & Visualization:**
   - Analyzed average time-to-purchase durations by day, weekday, and month to determine trends.
   - Used Tableau for creating dynamic visualizations of time-to-purchase distributions and order trends.

---

### **Tools & Technologies:**
- **SQL:** Used for data extraction and transformation, computing time-based metrics from raw user event data.
- **Tableau:** Created an interactive dashboard to visualize time-to-purchase dynamics, including distributions by time range and purchasing trends across days and months.
- **Excel:** Assisted with data cleaning and preliminary calculations.

---

### **Insights:**
1. **Time-to-Purchase Segmentation:**
   - A significant 79% of orders occurred within the first hour, suggesting that most users decide quickly. However, users taking 1–5 hours to purchase generated a higher average revenue per order, which could indicate more considered, higher-value purchases.

2. **Weekly Patterns:**
   - Users on Sundays had the shortest average purchase duration, while Wednesdays showed the highest, hinting at potential differences in engagement across the week.

3. **Monthly Trends:**
   - Purchase durations varied widely throughout the months, with notable peaks around certain dates. For instance, November 25 and January 20 saw the longest durations, while certain end-of-month dates had the shortest.

---

### **Recommendations:**
1. **Optimize Onboarding for Fast Conversions:**
   - Since most users purchase within an hour, enhance the initial user experience to further support immediate purchases, potentially by simplifying the purchase process or offering quick-access promotions.

2. **Target High-Value, Deliberate Buyers:**
   - Users in the 1–5 hour range represent a valuable segment, possibly conducting more research before purchasing. Consider remarketing or providing personalized messages to nudge these users toward a purchase.

3. **Day-Specific Promotions:**
   - Explore targeted promotions or special campaigns on Wednesdays, which have a longer average time-to-purchase, to potentially encourage quicker conversions.

4. **Further Analysis:**
   - Conduct an A/B test to evaluate the effectiveness of any changes made to the purchase funnel. Additionally, analyzing repeat purchase behavior could provide insights into long-term user value.

---

This project, documented in a product analytics dashboard, highlights the significant role of time-to-purchase analysis in optimizing conversion strategies and enhancing user experience, laying a foundation for targeted improvements and future testing.

Here is the link to the [Tableau dashboard.](https://public.tableau.com/views/product_analytics/Productanalysticsdashboard?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link) The link to the spreadsheet is given [here](https://docs.google.com/spreadsheets/d/1pxDAAQlLWfAxbg2lcL_azMTPNHkNrAFr9SNdQx7gkB0/edit?usp=sharing)

Note: I have also attached the .sql file to this repository. You can check my presentation slide [here](https://github.com/TuringCollegeSubmissions/byusuf-PA.1.3/blob/main/Product%20Analytics.pdf). Thank you for your time.
