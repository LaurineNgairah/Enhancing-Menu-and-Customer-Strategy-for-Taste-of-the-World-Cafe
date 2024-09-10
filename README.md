# SQL Project: Analyzing Menu Performance and Customer Preferences for Taste of the World Cafe

## Project Overview:

The Taste of the World Cafe has introduced a new menu, and we conducted an analysis using SQL to identify the best and worst performing items, understand customer preferences, and highlight the top customers. This analysis helps inform future decisions regarding menu optimization and customer targeting.

## Key Insights from the Menu Items Table

### Diversity of Menu Offerings:
The cafe offers a total of 32 items, spanning four major categories: American, Asian, Mexican, and Italian. The diverse menu ensures a wide selection of dishes, appealing to various customer tastes.
### Pricing Insights:
The top 5 least expensive items include:
Edamame (Asian) – $5.00
Chips & Salsa – $7.00
Mac & Cheese – $7.00
French Fries – $7.00
Hot Dog – $9.00
These budget-friendly items can serve as attractive choices for cost-conscious customers, and bundling them could increase sales.

The top 5 most expensive items include:
Shrimp Scampi (Italian) – $19.95
Meat Lasagna (Italian) – $17.95
Korean Beef Bowl – $17.95
Pork Ramen – $17.95
Spaghetti & Meatballs (Italian) – $17.95
Higher-priced items are primarily in the Italian category, reflecting a premium selection of ingredients, possibly catering to customers seeking more gourmet dishes.

### Italian Menu Dominance:
Italian dishes account for 9 of the 32 menu items, representing a significant portion of the offerings. This positions Italian cuisine as a focal point for the cafe.
While the least expensive Italian dish is Spaghetti ($14.50), the most expensive is Shrimp Scampi ($19.95), indicating a range of pricing options within this category.

### Category-Wise Distribution:
The number of dishes across categories shows balance:
American: 6 items
Asian: 8 items
Mexican: 9 items
Italian: 9 items
This balance ensures that different customer preferences are catered to, with no category being overly dominant.

### Average Dish Price by Category:
American: $10.07
Mexican: $11.80
Asian: $13.48
Italian: $16.75
Italian dishes have the highest average price, reinforcing the perception that they are premium offerings, while American dishes are the most affordable.

## Key Insights from the Order Details Table
### Order Volume:
A total of 5,370 distinct orders were made between January 1st, 2023, and March 31st, 2023. This represents significant customer engagement and a strong customer base.

### Order Frequency:
12,234 items were ordered during this period, demonstrating a high average item-per-order ratio. This indicates that customers tend to order more than one item per visit.

### Large Orders:
20 orders had more than 12 items, with seven orders having 14 items each. These larger orders could be from groups or corporate events, highlighting an opportunity to focus on catering services or family-style meals.

## Key Insights from the Joined Results (Menu and Order Data)
### Least Ordered Item:
Chicken Tacos (Mexican) had the lowest number of orders, with only 123 orders. This suggests that the item may not be resonating with customers. It could be worth investigating if this is due to pricing, quality, or competition from other popular dishes.

### Most Ordered Item:
The Hamburger (American) was the most popular item, with 622 orders. The cafe could consider promoting this item further or creating variations to capitalize on its popularity.

### Top-Spending Customers:
The top 5 highest-spending orders were:
Order ID 440: $192.15
Order ID 2075: $191.05
Order ID 1957: $190.10
Order ID 330: $189.70
Order ID 2675: $185.10
These high-value orders suggest that customers are willing to spend significantly in a single visit. Offering special deals or loyalty programs targeting high-spending customers could encourage repeat business.

### Top Revenue-Generating Items:
The top 5 revenue-generating items were:
Korean Beef Bowl (Asian) – $10,554.60
Spaghetti & Meatballs (Italian) – $8,436.50
Tofu Pad Thai (Asian) – $8,149.00
Cheeseburger (American) – $8,132.85
Hamburger (American) – $8,054.90
The fact that both Asian and American dishes dominate this list indicates strong customer preferences for these categories. This provides an opportunity to further explore Asian and American dishes or introduce new items to cater to customer tastes.

### Italian Dishes in High-Spend Orders:
Italian dishes were heavily featured in the top 5 highest-spending orders. Specifically, in order ID 440 (the highest spending order), 8 Italian dishes were purchased. This further emphasizes the popularity and premium positioning of Italian cuisine in high-value customer segments.

## Conclusions and Recommendations
- Menu Optimization: The cafe should consider focusing on promoting the most popular and high-revenue items, such as the Hamburger and Korean Beef Bowl, while re-evaluating the positioning or pricing of underperforming items like Chicken Tacos.
- Pricing Strategy: With Italian dishes priced higher and appearing frequently in large orders, the cafe can continue to position these items as premium offerings while potentially offering more affordable options to attract a wider customer base.
- Targeting High-Spend Customers: Creating a loyalty program or special deals for high-spending customers could drive repeat visits and larger orders. Promoting group or family meal bundles could also capitalize on large order trends.
- Item-Specific Promotions: Leveraging the popularity of the Korean Beef Bowl and Spaghetti & Meatballs through targeted promotions could help maintain their strong revenue contribution while attracting new customers.


This SQL-based analysis provides actionable insights that can help The Taste of the World Cafe enhance its menu offerings and customer engagement, driving both customer satisfaction and revenue growth.
