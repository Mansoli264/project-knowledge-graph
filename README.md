# Project Knowledge Graph Builder

This project models project tasks and dependencies using Neo4j, and identifies the critical path using Cypher.

## 📁 Files

- `create_data.cypher`: Creates project, tasks, and dependencies
- `critical_path.cypher`: Runs query to find critical path
- `output_screenshot.png`: Screenshot of output

## 🔧 Technologies

- Neo4j Sandbox
- Cypher Query Language

## ✅ Sample Output

Critical Path: ['Data Pipeline', 'Model Integration', 'Testing', 'Deployment']
Total Duration: 11 days
