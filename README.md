# Sorting tables with Google’s weighted sort algorithm
Imagine you have a data set which contains every page of your website and two corresponding key performance indicators (KPI). The first KPI are your page impressions which are defined as number of times a specific page has been accessed. The second KPI is the bounce rate and represents the percentage of visitors who enter your website on a specific page and then leave (“bounce”) directly rather than continuing on to view other pages within your website. The bounce rate is a measure of the effectiveness of a website.

So far so good, but if you sort your table via bounce rate you have not achieved much, as most of the pages with a high bounce rate will have a small amount of page impressions. The underlying question is the following: How can I get pages with a high bounce rate but also a high amount of page impressions?

Google developed a weighted sort algorithm that will help you. It is based on calculating the Estimated True Value (ETV) and using the ETV as a score on which to sort. The ETV calculation essentially says, “I need to figure out whether the row of data (page x) that I’m looking at is a large or a small percentage of the data in the whole table. If it’s a large percentage, then I need to take this row seriously in the sense that the data is probably meaningful. If it’s a small percentage, then I shouldn’t take this row seriously, and the reality is that I’d probably be more ‘correct’ if I just leaned towards using the average Bounce Rate for the whole table.“ Now you can sort your table via ETV and you will have the most interesting pages on top of the table.
