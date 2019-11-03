In the last decade we have seen many intersting developments in databases, in distributed systems,
and in the ways we build applications on top of them.
There are various driving forces for these developments:
1. Internet companies handling huge volumes of data and traffic,
forcing them to create new tools that enable them to efficiently handle such scale
2. - Businesses needs to be agile,
   - test hypothesis easily,
   - respond quickly to new market insights by keeping development cycle short and data models flexible
3. Free and Open source software has become very successful
4. CPU clock speeds are barely increasing, but multi-core processsor are standard and netwroks are getting faster.
5. Distributed system are easy because of IaaS such as AWS
6. - Many services are now expected to be highly available;
   - Extended downtime due to outages or maintenance is becoming increasingly unacceptable
   
* Data Intensive application:
  - Data is it's primary challenge
  - The quantity of data
  - the complexity of data or the speed at which it is changing
* Compute Intensive application :
  - CPU cycles are the bottleneck
  
  Reliability - Scalability - Maintainability
  
  ```
  The internet was done so well that most people think of it as a natural resource like the Pacific Ocean,
  rather than something that was man-made.
  When was the last time a technology with a scale like that was so error-free?
  - Alan Kay
  ```
  
## Chapter 3 - Storage and Retrieval
How we(the database) stores the data we're given, and how we can find it again when we're asked for it.

Compaction: Compaction means throwing duplicate keys in the log, and keeping only the most recent update for each key.
  
