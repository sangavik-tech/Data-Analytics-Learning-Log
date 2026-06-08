SQL
--- PROJECT: Regional Sales Performance
--- DATE: 2026-06-08
--- OBJECTIVE: Identify the top-performing sales rep in the Midwest region.
  
SELECT a.first_name || ' ' || a.last_name AS rep_name,
       SUM(b.amount_usd) AS total_revenue
FROM tutorial.regions c
JOIN tutorial.sales_reps a ON c.id = a.region_id
JOIN tutorial.accounts d ON a.id = d.sales_rep_id
JOIN tutorial.orders b ON d.id = b.account_id
WHERE c.name ILIKE 'Midwest%'
GROUP BY 1
ORDER BY 2 DESC;

---NOTE:
---1. THE BRIDGE (Region -> Reps -> Accounts -> Orders) 
---2. Single Quotes ('...'): Tell the database: "Treat this as a piece of text (a literal string) 
---3. No Quotes: Tell the database: "Look for a column with this name."
---4. Used || ' ' ||: This takes the first name, adds a space, and then adds the last name.
---5. Used SUM() to aggregate the revenue per representative.
