const express = require('express'); // handles the http requests 
const mysql = require('mysql2'); // to access the db
const cors = require('cors'); // connection between frontend and backend
const app = express(); // initialises the app

const PORT = 3000; // Default website port

// Middlewares
app.use(cors()); 
app.use(express.json()); // makes requests bodies like js objects

// Database connection details
const db = mysql.createConnection({
    host: 'localhost', 
    user: 'root', // *replace with your db connection user
    password: '1234567890zari', // *replace with your db connection password
    database: 'studentprofileandmanagement' 
});

// Test db con
db.connect(err => {
    if (err) {
        console.error('Error connecting to database:', err);
    } else {
        console.log('Connected to database.');
    }
});

// Student profile data
app.get('/student/:id', (req, res) => {
    const studentId = req.params.id;

    // Query string to get all student info
    const query = `
        SELECT s.*, p.ProgramName
        FROM student s
        LEFT JOIN program p ON s.ProgramID = p.ProgramID
        WHERE s.StudID = ?
    `;

    // Gets all student info
    db.query(query, [studentId], (err, results) => {
        if (err) {
            console.error('Error fetching student:', err);
            return res.status(500).json({ message: 'Server error' });
        }

        if (results.length === 0) {
            return res.status(404).json({ message: 'Student not found' });
        }
        res.json(results[0]);
    });
});

// Sign up route
app.post('/signup', (req, res) => {
    // Retrieves all new student information 
    const {
        firstName,
        lastName,
        dateOfBirth,
        gender,
        contactNumber,
        address,
        programId,
        academicStatus,
        academicYear,
        email,
        password,
        studId 
    } = req.body;

    // Query string to insert a new student
    const insertStudentQuery = `
        INSERT INTO student (
            StudFirstName, StudLastName, StudDateOfBirth,
            StudGender, StudContactNumber, StudAddress,
            ProgramID, StudAcademicStatus, StudAcademicYear,
            StudEmail, StudeIDNum
        )
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    `;
    // Storing all student info in array to pass it at once to the query
    const studentValues = [
        firstName, lastName, dateOfBirth,
        gender, contactNumber, address,
        programId, academicStatus, academicYear,
        email, studId
    ];
    // Inserts the new student
    db.query(insertStudentQuery, studentValues, (err, studentResult) => {
        if (err) {
            console.error('Error inserting into student table:', err);
            return res.status(500).json({ message: 'Failed to register student.' });
        }

        const generatedStudentID = studentResult.insertId; // retrieves the newly auto-generated id

        // Query string to insert a new account
        const insertAccountQuery = `
            INSERT INTO account (StudentID, AccountEmail, AccountPassword)
            VALUES (?, ?, ?)
        `;

        // Inserts the new account
        db.query(insertAccountQuery, [generatedStudentID, email, password], (err, accountResult) => {
            if (err) {
                console.error('Error inserting into account table:', err);
                return res.status(500).json({ message: 'Failed to create account.' });
            }

            res.status(200).json({ message: 'Account created successfully.' });
        });
    });
});



// Login route
app.post('/login', (req, res) => {
    const { email, password } = req.body;

    // Query string to check for an existing account
    const query = `
        SELECT * FROM account
        WHERE AccountEmail = ? AND AccountPassword = ?
    `;
    // Searches for an account
    db.query(query, [email, password], (err, results) => {
        if(err){
            console.error('Error querying database: ', err);
            return res.status(500).json({message: 'Server error'});
        }   
        if(results.length > 0){
            res.json({message: 'Login successful', user: results[0]});
            console.log("Successful Login: ", results[0]);
        }
        else{
            res.status(401).json({message: 'Invalid credentials'});
        }
    })
});

// Enrolled route
app.get('/enrolled', (req, res) => {
    const studentId = req.query.studentId;

    if (!studentId) {
        return res.status(400).json({ error: 'Student ID is required' });
    }
    // Query string to get all enrolled subject details of a student 
    const query = `
        SELECT 
        subject.SubjCode AS code,
        subject.SubjName AS description,
        subject.SubjUnits AS units,
        schedule.SchedCode AS section,
        CONCAT(instructor.InstructFirstName,' ', instructor.InstructLastName) AS instructor
        FROM management
        JOIN schedule ON management.ScheduleID = SchedID
        JOIN instructor ON management.InstructorID = instructor.InstructID
        JOIN subject ON management.SubjectID = subject.SubjID
        WHERE management.StudentID = ? AND management.ManageStatus = 'Enrolled'
    `;
    // Obtains all enrolled subjects
    db.query(query, [studentId], (err, results) => {
        if (err) {
        console.error('Database error:', err);
            return res.status(500).json({ error: 'Internal server error' });
        }
        res.json(results); // returns an array of objects (enrolled subjects) (which represent the rows returned from the select query)
    });
});

// Evaluation route 
app.get('/evaluation', (req, res) => {
    const studentId = req.query.studentId;

    if (!studentId) {
        return res.status(400).json({ error: 'Student ID is required' });
    }
    // Query string to get all passed subject details of a student 
    const query = `
        SELECT 
        subject.SubjCode AS code,
        subject.SubjName AS description,
        subject.SubjUnits AS units,
        management.ManageGrade AS grade,
        subject.SubjSemester AS semester
        FROM management
        JOIN subject ON management.SubjectID = subject.SubjID
        WHERE management.StudentID = ? AND management.ManageStatus = 'Passed'
    `;
    // Obtains all passed subjects
    db.query(query, [studentId], (err, results) => {
        if (err) {
        console.error('Database error:', err);
        return res.status(500).json({ error: 'Internal server error' });
        }

        res.json(results); // returns an array of objects (passed subjects)
    });
});


// Grades route
app.get('/grades/:semester', (req, res) => {
    const semester = req.params.semester;
    const studentId = req.query.studentId;

    // Query string to retrieve all subjects of a student based on the semester
    const query = `
        SELECT 
            s.SubjCode AS code,
            s.SubjName AS description,
            s.SubjUnits AS units,
            m.ManageGrade AS grade,
            CONCAT(i.InstructFirstName, ' ', i.InstructLastName) AS instructor
        FROM management m
        JOIN subject s ON m.SubjectID = s.SubjID
        LEFT JOIN instructor i ON m.InstructorID = i.InstructID
        WHERE m.StudentID = ? AND s.SubjSemester = ?
    `;
    // Obtains all subjects by semester
    db.query(query, [studentId, semester], (err, results) => {
        if (err) {
            console.error('Error fetching grades:', err);
            return res.status(500).json({ message: 'Server error' });
        }
        res.json(results);
    });
});


// Start server
app.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}`);
});
