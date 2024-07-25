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
### EC2 + S3 + DocumentDB

### Total Monthly Cost:± $110.98
### Total Annual Cost:± $1,331.76

## Detailed Cloud Architecture
The cloud architecture is designed to be cost-efficient while maintaining performance and reliability. Below are the key components and their configurations:

### Context and Scope
- **Cloud Provider:** AWS
- **Services Used:** EC2, DocumentDB, S3


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


