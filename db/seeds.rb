# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: "test@gmail.com", password: "1234567", password_confirmation: "1234567", is_admin: true)

Job.create!(title: "Human Resources", description: "Thorough knowledge of applicable local, state and federal employment law.
Strong talent acquisition skills.
Ability to handle multiple priorities, make decisions, and resolve conflicts.
Excellent communication and presentations skills.
Ability to communicate effectively across all levels of the organization.
Must be a team player with strong training and consultative skills.
Proficient with various technologies such as Applicant Tracking Systems and", wage_lower_bound: 8000, wage_upper_bound: 10000, contact_email: "test@gmail.com",
is_hidden: false, category: "human-resource", company: "Sam Dunn Enterprises", city: "Shenzhen")

Job.create!(title: "Kindred Healthcare", description: "Thorough knowledge of applicable local, state and federal employment law.
Strong talent acquisition skills.
Ability to handle multiple priorities, make decisions, and resolve conflicts.
Excellent communication and presentations skills.
Ability to communicate effectively across all levels of the organization.
Must be a team player with strong training and consultative skills.
Proficient with various technologies such as Applicant Tracking Systems and", wage_lower_bound: 1000, wage_upper_bound: 2000, contact_email: "test@gmail.com",
is_hidden: false, category: "non-profit", company: " San Diego", city: "Shanghai")


Job.create!(title: "Automotive Sales", description: "Interested in a career with Kindred Hospitals â€“ a place where you can put your heart into and make a real difference in our patientâ€™s lives.

Come and grow your career with Kindred Hospitals, a division of Kindred Healthcare. Our culture of caring for our patients and residents begin with our core values â€“ our employees. We are committed to fostering professional growth and dedicated healthcare teams that make us the provider of choice. We embrace a diverse workforce and understand that hiring outstanding people is the key to providing quality care â€“ and quality care is what we do every day! Join us!", wage_lower_bound: 12000, wage_upper_bound: 15000, contact_email: "test@gmail.com",
is_hidden: false, category: "sales-marketing", company: " Premium High Volume", city: "Nanjing")

Job.create!(title: "Automotive Sales", description: "Locate/Select a vehicle best suited to the customer needs

Review vehicle selection, attributes, options and features

Conduct vehicle test drive

Negotiate the sale closure

Complete sales documentation accurately

Provide clear explanation of vehicle features and operation

Maintain a current knowledge of promotions, products, services

Follow up with prospective customers and return email/vocemails

Follow up with existing customers and generate leads", wage_lower_bound: 12000, wage_upper_bound: 15000, contact_email: "test@gmail.com",
is_hidden: false, category: "sales-marketing", company: " Premium High Volume", city: "Nanjing")

Job.create!(title: "Healthcare Sales Representative", description: "Healthcare industry sales experience preferred
Solution- selling experiences preferred over - product-based prior roles
Ability to work independently and manage time effectively
Strong analytical, communication and interpersonal skills
Solid work ethic and a strong customer focus
Strong background on building business within a healthcare setting
Must be organized, persuasive and determined to drive measureable product orders
Working knowledge of sales operations including data/reports, call planning and sales tactics", wage_lower_bound: 8000, wage_upper_bound: 10000, contact_email: "test@gmail.com",
is_hidden: false, category: "healthcare", company: " Sales Focus, Inc.", city: "New York")

Job.create!(title: "Legal Assistant", description: "BASIC QUALIFICATIONS

· 2+ years of experience in an administrative capacity
· Bachelor’s degree
· Strong written and oral communication skills
· Ability to work independently
· Client-service oriented with strong attention to detail
PREFERRED QUALIFICATIONS

· Strong desire and aptitude for learning new concepts
· Ability to demonstrate sound judgment in ambiguous situations
· Legal experience is a plus", wage_lower_bound: 8000, wage_upper_bound: 9500, contact_email: "test@gmail.com",
is_hidden: false, category: "legal", company: " Amazon Corporate LLC", city: "Seattle")

Job.create!(title: "Leadership Development Principal", description: "OW Offer
Get Started

Job title, company, city...

 Sign Up
 Login
Leadership Development Principal at Amazon Corporate LLC
Job Description:

Basic Qualifications
· Willingness to ‘roll up your sleeves’ and create basic training as well as the ability to think strategically and interact with senior leaders in a credible manner.
· Ability to influence and partner with different levels of the organization to achieve results.
· 10+ years’ work experience in the areas of management and leadership development, organization development, public speaking, group facilitation, training and training design.
· Bachelor’s Degree or equivalent post-secondary degree required in Human Resources management, Organizational Development or related field.

Preferred Qualifications
· Master’s degree in a related discipline.
· Experience with project management software, SharePoint and graphic design software a plus.
· Strong business and HR acumen, including problem solving skills, critical thinking, and willingness to be vocally self-critical.
· Desire and ability to be a change agent in aggressively developing and supporting new processes and approaches to the work.
· Experience with using, administering and facilitating assessment tools, such as Firo-B, MBTI, PDI Profilor, etc

", wage_lower_bound: 8500, wage_upper_bound: 1000, contact_email: "test@gmail.com",
is_hidden: false, category: "developer", company: " Amazon Corporate LLC", city: "Washington")

Job.create!(title: "Web Development Engineer", description: "BASIC QUALIFICATIONS

· 5 to 10 years of experience developing websites and web applications.
· HTML5, JavaScript, CSS3, jQuery, and AJAX experience are essential.
· Knowledge of cross platform / browser compatibility issues and how to overcome it with top of the line UX.
· JSON/AJAX interfaces with experience of rich client side applications.
· Optimization of web applications performance and page loading.
· Ability to mentor junior engineers, establish and promote best practices.
· Experience with MVC application frameworks specifically Spring, MVC, Ruby on Rails or PHP.

PREFERRED QUALIFICATIONS

· JavaScript Client Side MVC such as Backbone
· Experience with QUnit, FuncUnit or other unit testing or BDD frameworks
· Strong sense of visual and UI design
· Knowledge of Java or C++", wage_lower_bound: 12000, wage_upper_bound: 15000, contact_email: "test@gmail.com",
is_hidden: false, category: "developer", company: " Amazon", city: "India")

Job.create!(title: "Customer Service / Order Processor", description: "Healthcare industry sales experience preferred
Solution- selling experiences preferred over - product-based prior roles
Ability to work independently and manage time effectively
Strong analytical, communication and interpersonal skills
Solid work ethic and a strong customer focus
Strong background on building business within a healthcare setting
Must be organized, persuasive and determined to drive measureable product orders
Working knowledge of sales operations including data/reports, call planning and sales tactics", wage_lower_bound: 7500, wage_upper_bound: 9800, contact_email: "test@gmail.com",
is_hidden: false, category: "customer-service", company: " Stivers Staffing Services", city: "Beijing")

Job.create!(title: "Solidworks Designer", description: "Aerotek CE is currently working with a client in the automotive industry that is creating alternative solutions for powering vehicles. This company is looking to add multiple Solidworks Designers to their team this year, in order to begin the development of their next generation of products.

Responsibilities:

Work side-by-side with a team of mechanical engineers
Take sketches from the mechanical engineers and transfer them into 3D models within Solidworks design software
Will be working with the electronic packaging of PC Boards
Qualifications:

5+ Years of Solidworks design experience
Experience designing electronics packaging enclosures
Beneficial to have experience with custom enclosures", wage_lower_bound: 7500, wage_upper_bound: 9800, contact_email: "test@gmail.com",
is_hidden: false, category: "design", company: " Aerotek CE", city: "Nicholas Felicioni")

Job.create!(title: "CAD Designer/Engineer", description: "Aerotek CE is currently working with a client in the automotive industry that is creating alternative solutions for powering vehicles. This company is looking to add multiple Solidworks Designers to their team this year, in order to begin the development of their next generation of products.

Responsibilities:

Work side-by-side with a team of mechanical engineers
Take sketches from the mechanical engineers and transfer them into 3D models within Solidworks design software
Will be working with the electronic packaging of PC Boards
Qualifications:

5+ Years of Solidworks design experience
Experience designing electronics packaging enclosures
Beneficial to have experience with custom enclosures", wage_lower_bound: 7500, wage_upper_bound: 9800, contact_email: "test@gmail.com",
is_hidden: false, category: "design", company: " Ford Motor", city: "New York")
