

**Deliverable 4: Implementation 1**

Group 7 - Project Sekhmet

Date and Location for Start of Requirements: March 3, 2021 5:00PM, Engineering Commons

Manager: Ricardo McCrary

Quality Assurance: Kaila Iglesias

Meeting Minutes Taker: Jonathan Gomez

Presenter: Carson Pociask

**1. Introduction**

*Provide a short paragraph that describes your system. This paragraph should contain the*

*value proposition and the description of the main features of the software. At the end of*

*the introduction, include links to your project on GitHub and Trello.*

Our system allows app users to input calories and view them in a log of daily and

weekly time periods. Another key point of our system is the tracking of exercise activity

that can sum up calories burned and has the ability to be logged in a daily and weekly

format. The user can play a game in the app where the in-game progress is reflected by

real-world user activity like performing exercise, logging meals, and achieving user

preset goals. This base description encourages young adults who struggle to maintain

healthy habits to participate in daily activities like tracking and improving diet as well as

performing exercise via app recommendations.

Github: <https://github.com/cpociask00/386_Team_7.git>

Trello: <https://trello.com/b/nvzWSjg8/team-7-kanban>





**2. Implemented Requirements**

*List in this section,the requirements (user stories, issues, or use cases) that you*

*implemented for this release. We expect that you implement/prototype features you*

*specified in your MVP (c.f. D.2 Requirements). Include who worked on each of the*

*features. We expect that all the members of the group have been involved in some*

*programming activities. BTW, we will check if you are using your issue tracker to*

*manage the implementation tasks.*

**User Stories:**

Log in - Hours: 10 - Worked on by Carson Pociask, Kyle Mo, and Ricardo

McCrary

As an app user I want to be able to log in into my account so I can access the

information that is relevant to me.

Calories tracker- Hours: 3-6 - Worked on by Jake Stuck and Kaila Iglesias

As an app user I want to be able to input how many calories I intake in an

easy-to-access place so I can manage and track my calorie intake and manage my

weight.

Exercises - Hours: 3-6 - Worked on by Jonathan Gomez, Jake Stuck, and Kaila

Iglesias

As an app user I want to see exercises so that I can choose the workout plan that

best fits my goals.

**Use Cases:**

App User:

View/select recipes

Input calorie intake

**3. Adopted Technologies**

*List the adopted technologies with a brief description and justification for choosing them.*

\1. Flutter - Allows for the code we write to be used for both Android and iOS

deployment. This takes quite a bit of workload off of the team and doubles the

market view.

\2. Dart - Easy to learn programming language that makes it easy for our team to

learn app development as most of us are new to this type of development.

\3. AWS Database - A database allows for the storage of our users’ data. This

database is easy to maintain and provides a very clean user interface so the team

can all easily learn about database implementation.





**4. Learning/Training**

*Describe the strategies employed by the team to learn the adopted technologies.*

We utilized online tutorials to help us implement and learn the technologies to

begin developing our mobile application. These tutorials ranged from videos with

examples on how to install or create things, to written documentation on the use of said

technology. Some of the team members also already had knowledge in some of the

technologies: Jake with Flutter and Dart, Carson and Ricardo with database management,

and all members with the Java programming language and basic web languages like

HTML and CSS. During our meetings, that respective team member gave others a short

tutorial on how to download and install the development software we decided on as a

team. Lastly, we utilized TAs and professors for guidance on how to approach certain

problems when we ourselves couldn't figure it out.

**5. Deployment**

*Describe how you are deploying your system in production. Remember that AWS Educate*

*offers free credits for students. See the tutorial at https://docker-curriculum.com/ on how*

*to create a container and deploy it on AWS. Provide a link for the system in production.*

We will be deploying our app on the Google Play Store for Android and

potentially the App Store for iOS. Flutter utilizes the JVM for Gradle, a built-in app build

technology that we will use to compile our app into Java bytecode. From here, we can

compile the code into either iOS or Android ready deployment, although this depends on

the mahine. Luckily we are able to do both as our group works on MacOS, Windows, and

Linux. We plan to release new versions of our app whenever necessary to fix bugs or

errors present in the app. We can force users to update to the latest version whenever

applicable.

**6. Licensing**

*Inform the license you adopted for your source code(remember to configure GitHub*

*accordingly). Explain why you adopted this license.For more information, check*

*https://choosealicense.com/and*

[*http://redhat.slides.com/glikins/open-source-licensing-101#/*](http://redhat.slides.com/glikins/open-source-licensing-101#/)

We looked into the GNU and MIT open source licences, but ended up going with

MIT as it seems it is easier to understand. We see MIT posing less problems for us so we

can focus more on the code aspect of our project. MIT allows for anyone to download the

code for our app so they can make changes. We see this as a good thing as we encourage

creativity, even if the changes aren’t something we would implement into our version of

the app.





**7. Readme File**

*You should also prepare your repository for receiving new contributors. See an example*

*of a Redme.md file at [https://gist.github.com/PurpleBooth/109311bb0361f32d87a2*](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2)*

*Besides the Readme.md file, your repository should contain a CONTRIBUTING.md file,*

*a LICENSE file, and a CODE\_OF\_CONDUCT.md file. Search online for some examples*

*of these files.In this section of the deliverable, put links to these files on GitHub.In the*

*Readme file, the currentversion should be stated.You should follow the Semantic*

*Versioning schema (https://semver.org/). Tag the GitHub repositoryaccordingly*

*(<https://git-scm.com/book/en/v2/Git-Basics-Tagging>).*

Read Me: <https://github.com/cpociask00/386_Team_7/blob/main/README.md>

Contributing:[https://github.com/cpociask00/386_Team_7/blob/main/CONTRIBUTING.](https://github.com/cpociask00/386_Team_7/blob/main/CONTRIBUTING.md)

[md](https://github.com/cpociask00/386_Team_7/blob/main/CONTRIBUTING.md)

Licensing: <https://github.com/cpociask00/386_Team_7/blob/main/LICENSE.md>

Code of Conduct:

<https://github.com/cpociask00/386_Team_7/blob/main/CODE_OF_CONDUCT.md>





**8. Look and Feel**

*Describe the approach you adopted to design your user interface. Include some*

*screenshots.*

We decided to go with a lively and inspiring look for our app. We believe that

brighter colors like light blue and yellow would be good for a health app as they are “get

up and go” colors. We want our app to be airy so we spread out the navigation tabs. This

way the user doesn’t have to deal with a busy screen and are able to get to where they

need to go easily and quickly.

**9. Lessons Learned**

*Inretrospective, describe what your team learned during this first release and what you*

*are planning to change for the second release.*

The biggest lesson that we learned during this first release was that we all need

practice with GitHub. We found ourselves struggling with being able to manage pull

requests and were generally confused as to what to do. For the next release we feel better

about this struggle due to the fact that we had to learn our way around GitHub.

**10. Demo**

*Include a link to a video showing the system working.*

<https://www.youtube.com/watch?v=3TXgQ_5eMiM>

