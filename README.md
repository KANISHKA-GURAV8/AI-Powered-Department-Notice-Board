🚀 AI-Powered Department Notice Board

An intelligent web application designed to automate and streamline the management of department notices using AI. The system reduces manual effort by automatically categorizing notices, removing expired ones, and providing real-time updates to users.

✨ Key Features
🔐 Role-Based Access Control

Admin :
1.Upload and manage notices
2.Set expiry dates
3.Monitor all notices

Student :
1.View notices in real-time
2.Access categorized notices easily

🤖 AI-Based Categorization
1.Automatically classifies notices into categories like:
Exams
Events
Placements
Achivements
2.Reduces manual sorting effort

⏰ Auto Expiry Management
1.Notices are automatically deleted after their expiry date
2.Keeps the system clean and relevant

⚡ Real-Time Updates
1.Instant visibility of newly added notices
2.Improves communication between admin and students

🌐 Faculty Data Scraping
1.Uses BeautifulSoup to fetch faculty details from the department website
2.Eliminates manual data entry

🛠️ Tech Stack
1.Frontend: HTML, CSS, JavaScript
2.Backend: Python (Flask)
3.Database: MySQL
4.AI/ML: Basic NLP model for classification
5.Web Scraping: BeautifulSoup
6.Version Control: Git & GitHub

📂 Project Structure
project/
│── frontend/          # CSS, JS,HTML
│── backend            # Main Flask app and  AI categorization logic
│── faculty_info/      # Web scraping scripts
│── college_notices_db/          # DB configuration
│── requirements.txt

⚙️ Setup Instructions
1️⃣ Clone Repository
git clone https://github.com/KANISHKA-GURAV8/AI-Powered-Department-Notice-Board
cd your-repo-name
2️⃣ Create Virtual Environment
python -m venv venv
venv\Scripts\activate   # Windows
3️⃣ Install Dependencies
pip install -r requirements.txt
4️⃣ Configure Database (MySQL)
1.Create a database in MySQL
2.Update DB credentials in your configuration file
5️⃣ Run Application
python app.py
🔄 Workflow

1.Admin logs in and uploads a notice
2.AI model categorizes the notice automatically
3.Notice is stored in the database
4.Students can view notices instantly
5.Expired notices are removed automatically

🎯 Use Cases
1.College Departments
2.Educational Institutions
3.Notice & Announcement Systems

📈 Future Enhancements
1.Email / SMS notifications
2.Advanced AI models for better accuracy
3.Search and filter functionality
4.Mobile-friendly UI
