# Where's Fluffy?

## Description
People who lose their pets often post on Craigslist or post fliers around the neighborhood. Local business folks want to go one better, providing a service that describes missing pets, manages pet rewards, and tracks location data points (GPS) of pet sightings.

### Requirements
- **User Registration:** Users interested in finding pets register on the site.
- **Public Listings:** Anyone can see a list of pets missing near their location.
- **Pet Found Messages:** Pet finders can post "pet found" messages with mandatory photo proof and collect rewards upon confirmation from pet owners.
- **User Comments:** Users can comment on pet missing entries, offering data points (sighted, area checked with no results, etc).
- **Scalability:** Local scalability (per-city), with the possibility of scaling out to other cities.
- **Mobile Accessibility:** Accessible via mobile devices.

## Cloud Budget Overview
To optimize and manage cloud costs, the project utilizes AWS services with the following configuration:

### 1. EC2 Instances
- **Instance Type:** t3.micro
- **Tenancy:** Shared instances
- **Operating System:** Linux
- **Workload:** Consistent
- **Monitoring:** Enabled
- **Pricing Strategy:** 1-year No Upfront
- **Monthly Cost:** $5.48

### 2. DocumentDB Cluster
- **Instance Type:** db.r4.large
- **vCPUs per Node:** 2
- **Number of Nodes:** 1
- **Server Utilization:** 8 hours/day
- **Storage:** 100 GB
- **I/O Requests:** 1 million
- **Backup Storage:** 200 GB
- **Monthly Cost:** $80.88

### 3. S3 Storage
- **Storage Size:** 1 TB
- **Average Object Size:** 4 MB
- **Requests:**
  - **PUT, COPY, POST, LIST:** 500 per month
  - **GET, SELECT, and All Other:** 10,000 per month
  - **Data Returned by S3 Select:** 300 GB per month
  - **Data Scanned by S3 Select:** 700 GB per month
- **Monthly Cost:** $24.62

### Total Monthly Cost: $110.98
### Total Annual Cost: $1,331.76

## Detailed Cloud Architecture
The cloud architecture is designed to be cost-efficient while maintaining performance and reliability. Below are the key components and their configurations:

### Context and Scope
- **Cloud Provider:** AWS
- **Services Used:** EC2, DocumentDB, S3

### Solution Strategy
- **EC2:** t3.micro, pre-paid, 1-year No Upfront, Linux OS
- **DocumentDB:** db.r4.large, 1 node, 8 hours/day usage
- **S3:** 1 TB storage, varied request types

### Cross-cutting Concepts
- **Monitoring:** Enabled for all EC2 instances to track performance and costs.
- **Backup Storage:** 200 GB allocated for DocumentDB backups to ensure data integrity and recovery.

### Architecture Decisions
- **EC2 Savings Plan:** Chosen to optimize costs without compromising performance.
- **DocumentDB Standard:** Selected for its ability to handle the specific workload requirements efficiently.
- **S3 Storage:** Configured to balance cost and performance for storage and access needs.

### Quality Requirements
- **Cost Efficiency:** Achieved through strategic use of pre-paid instances and optimized resource utilization.
- **Performance:** Ensured by selecting appropriate instance types and configurations.
- **Reliability:** Maintained through regular monitoring and backup strategies.

### Risks and Technical Debt
- **Potential Cost Overruns:** Mitigated by continuous monitoring and cost analysis.
- **Performance Issues:** Addressed through regular performance tuning and resource adjustments.

## Glossary
- **EC2:** Elastic Compute Cloud, providing scalable compute capacity.
- **S3:** Simple Storage Service, offering object storage with high durability.
- **DocumentDB:** Managed NoSQL database service designed for performance and availability.


---


