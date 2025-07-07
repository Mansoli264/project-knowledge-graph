#  Project Knowledge Graph Builder

This project demonstrates how to model a real-world project and its task dependencies using **Neo4j** (a graph database) and **Cypher queries** to determine the **critical path** — the longest sequence of dependent tasks that determines the minimum project duration.

>  Use Case: Project managers can visualize and analyze task bottlenecks and delays using a graph-based system.

---

##  Objective

- Model project tasks and dependencies as a knowledge graph in Neo4j
- Use Cypher queries to analyze task sequences
- Identify and output the **critical path** with the **total duration**
- Automate the result (optionally) using a Python script or run via Neo4j Browser

---

##  Data Model

###  Nodes
- `:Project` – represents the entire project
  - Properties: `name`
- `:Task` – represents an individual task
  - Properties: `id`, `name`, `duration`, `status` (`Not Started`, `In Progress`, `Completed`)

###  Relationships
- `(:Project)-[:CONTAINS]->(:Task)` – connects a project to its tasks
- `(:Task)-[:DEPENDS_ON]->(:Task)` – connects dependent tasks

---

## 📘 Sample Data

Project: **"AI Dashboard Implementation"**

### 🔨 Tasks

| ID  | Name              | Duration | Status       |
|-----|-------------------|----------|--------------|
| T1  | Data Pipeline      | 3 days   | Completed    |
| T2  | UI Design          | 2 days   | In Progress  |
| T3  | Model Integration  | 4 days   | Not Started  |
| T4  | Testing            | 3 days   | Not Started  |
| T5  | Deployment         | 1 day    | Not Started  |

### 🔄 Dependencies

- `T3` depends on `T1`
- `T4` depends on `T2` and `T3`
- `T5` depends on `T4`

---

## 🔧 Technologies Used

- 🧠 Neo4j Sandbox / AuraDB Free
- 💬 Cypher Query Language
- 🐍 Python with `neo4j` driver (optional)
- 🖥️ Git Bash (for GitHub uploads)

---

## 🗂 Project Files

| File Name | Description |
|-----------|-------------|
| `create_data.cypher` | Creates the project, tasks, and dependencies |
| `critical_path.cypher` | Query to compute the critical path |
| `critical_path.py` *(optional)* | Python script to run the query |
| `README.md` | Documentation and usage guide |
| `output_screenshot.png` | Screenshot of the Neo4j output (you'll need to capture this manually) |

---

## 📐 Run via Neo4j Browser

1. Go to https://sandbox.neo4j.com and launch a blank project.
2. Paste the contents of `create_data.cypher` to create the data.
3. Paste and run `critical_path.cypher` to get the critical path.

---

##  Sample Output

```
Critical Path: ['Data Pipeline', 'Model Integration', 'Testing', 'Deployment']
Total Duration: 11 days
```

---

## Author

**Manali Solanki**  
MCA Student in AI & ML  
Project for learning graph modeling and critical path analysis.
