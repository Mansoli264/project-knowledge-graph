// Create the main project node
CREATE (p:Project {name: "AI Dashboard Implementation"})

// Create tasks
CREATE (t1:Task {id: "T1", name: "Data Pipeline", duration: 3, status: "Completed"})
CREATE (t2:Task {id: "T2", name: "UI Design", duration: 2, status: "In Progress"})
CREATE (t3:Task {id: "T3", name: "Model Integration", duration: 4, status: "Not Started"})
CREATE (t4:Task {id: "T4", name: "Testing", duration: 3, status: "Not Started"})
CREATE (t5:Task {id: "T5", name: "Deployment", duration: 1, status: "Not Started"})

// Set task dependencies (arrows)
CREATE (t3)-[:DEPENDS_ON]->(t1)
CREATE (t4)-[:DEPENDS_ON]->(t2)
CREATE (t4)-[:DEPENDS_ON]->(t3)
CREATE (t5)-[:DEPENDS_ON]->(t4)

// Link all tasks to the project
MERGE (p)-[:CONTAINS]->(t1)
MERGE (p)-[:CONTAINS]->(t2)
MERGE (p)-[:CONTAINS]->(t3)
MERGE (p)-[:CONTAINS]->(t4)
MERGE (p)-[:CONTAINS]->(t5)
