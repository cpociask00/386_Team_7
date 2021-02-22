**Deliverable 2: Requirements**

Group 7 - Project Sekhmet

Date and Location for Start of Requirements: February 10, 2021 6:00PM,
Engineering Commons

Manager: Carson Pociask

Quality Assurance: Ricardo McCrary

Meeting Minutes Taker: Kaila Iglesias

Presenter: Jake Stuck

**1. Positioning**

[1.1. Problem Statement]{.ul}

*Provide a statement to summarize the problem solved by your project
according to the following structure (which is based on the OpenUP
Vision Template):*

  The Problem of           Many people want to keep up with or create healthy habits but end up procrastinating when it comes to executing their plan. Especially during the covid pandemic this has been problematic for many people.
  ------------------------ -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Affects                  Young adults, those involved with fitness and potentially gaming.
  The Impact of Which is   Individuals live unhealthy lifestyles despite the desire to build healthy habits

[1.2. Product Position Statement]{.ul}

*A product position statement communicates the intent of the application
and the*

*importance of the project to all concerned personnel. The product
should mitigate the*

*aforementioned problem. Provide a statement according to the following
structure:*

  For                  Young adults
  -------------------- --------------------------------------------------------------------------------------------------------------------------------------
  Who                  Have difficulty maintaining a healthy habit
  The (product name)   My Olakino
  That                 Schedules and records exercise routines and provides diet recommendations that will help users to accomplish their targeted goal(s).
  Unlike               MyFitnessApp by Under Armor.
  Our Product          Has an RPG game where the user's progress in the app reflects the user's character's ability in game.

[1.3. Value Proposition and Consumer Segment]{.ul}

*Report the value propositions and consumer segments of your product.
Make sure that your value proposition is coherent with the product
position statement and contains the following elements: i) what your
product is; ii) the target customer; iii) the value your product
provides; and iv) why your product is unique.*

Value proposition: *My Olakino* is an app that young adults can use to
build and maintain healthy habits that encourages participation so they
can achieve their health related goals.

Consumer Segments: Young adults who struggle to maintain habits that
foster health. Health professionals who can advise the users.

**2. Stakeholders**

*Make a list of all stakeholders of the project with a brief description
of each one of them, emphasizing any responsibilities with the project.
Examples of stakeholders include users, clients, competitors,
detractors, developers, etc.*

App Users: People that use our app can give feedback including
suggestions and/or improvements.

Developers: Responsible for developing the app as well as listening to
the users. Responsible for updating the rpg aspect of the game to keep
it interesting for users. As developers, we are responsible for keeping
the app in working condition and responding to users that report
problems or bugs.

Competitors: Allows the developers to understand what works and what
doesn't works in a similar product.

**3. Functional Requirements (features)**

*Make a numbered list of requirements for your software. Just
self-explanatory titles are enough at this point. Remember that
requirements should deliver the value proposition and they must be
consistent with the interviews you previously performed. You can talk
again to your clients to help define the requirements. While writing the
requirements, focus on capabilities needed and not on how they should be
implemented.*

1.  Progress tracker in the form of a bar

2.  Calorie tracker chart (daily, weekly, monthly)

3.  Lists of exercises

4.  RPG game related to user progress

5.  Timer

6.  Recipies tab

7.  A smartwatch widget that allows viewing of progress

8.  Feedback/bug submission form

9.  Submission form to send to health trainer for analysis and response

**4. Non-functional Requirements**

*Make a numbered list of non-functional requirements that are important
for your software. Explain their importance. Follow the terminology of
ISO/IEC 25010:2011. For each non-functional requirement, give an
objective goal/measurement in order to provide verifiability for the
requirement.*

1.  One of the key ideas of this app will be high [usability]{.ul}. Many
    > interviews underscored the idea that customers rely on a user
    > interface that can be easily navigated. Users reported that they
    > were significantly less likely to continue using or keep an app
    > that was "confusing" to use.

> **Objective Goal:** Tabs within the app should clearly communicate
> their purpose as well as being easy to locate. All links within pages
> should be labeled and connected to related links/ information.

2.  Our health app will be [portable]{.ul} and [compatible]{.ul} across
    > multiple operating systems and devices. We will be developing an
    > app that works on both Android and Apple iOS. Thus, users that own
    > devices running on any of these operating systems will be able to
    > download the app, for example: Apple Watches, Android and Apple
    > tablets, phones, etc. By doing this we can be sure to reach a
    > wider audience of app users.

> **Objective Goal**: This multiple platform functionality will be
> executed via Flutter. Being able to test our app on both operating
> systems would provide a direct measurement of whether our app is truly
> compatible.

3.  This system should be [maintainable]{.ul}. Since one of the goals of
    > this app is to positively impact the development of healthy habits
    > for users, having a properly functioning system will significantly
    > impact the ease with which users can develop and maintain these
    > habits.

**Objective Goal:** App will be consistently updated with new and/or
improved functions

> based on user feedback to spot bugs and errors. An email system will
> be on the app and website for users to report problems or suggestions
> that developers can take into account.

4.  This app should be available offline when a wifi connection is
    > unavailable. Since this app allows users to look at exercises and
    > track their daily calorie intake, it is likely that users will not
    > always be using this app in a location (such as their home) with a
    > stable wifi connection. If users are out to dinner or on vacation
    > they should be able to access these key app functions.

**Objective Goal:** The app should be able to make use of an internal
and offline database

> that can store inputted information and, when connected, a data
> transfer to the remote database will take place.

**5. MVP**

*What will be your MVP? Which features are you going to validate? How?*

For the MVP of our app, some minimum aspects of our app include a
calorie diary that tracks how much you intake and how much you burn off.
We will validate this feature by making a simple user interface that
takes in calories that you have consumed and an amount of time spent
performing certain exercises to give you an idea of how much you burned
off. We will also want to add in a system where you can find workouts
that are specific to certain parts of your body or based on your
exercise goals. The way we will implement this is by creating a simple
tab with a short list of exercises that come with an average calorie
burn based off of some number of times you\'ve done it. An example would
be 10 push ups is equal to 100 calories burned.

**6. Use Cases**

[6.1. Use Case Diagram]{.ul}

*Include a use case diagram for your project following the UML
conventions.*

![](media/image4.jpg){width="6.5in" height="7.180555555555555in"}

[6.2. Use Case Descriptions and Interface Sketches]{.ul}

*Present one complete use case description for each member of the group.
Therefore, if the group has 3 members, 3 use case descriptions are
necessary.As the grading will not be individual,the group is responsible
for keeping the quality and consistency for the whole document --avoid
just splitting the work.Choose the most important use cases to describe.
After each use case description, add a sketch of the corresponding user
interface. This will be a good opportunity to start thinking about
usability.*

**Use Case 1**: Manage Statistics Report

**Actor**: Health Trainer

**Description**: Trainer receives health-related data from user for
viewing and crafts recommendations via forms for the user to more
efficiently execute their health plan.

**Preconditions**: Trainer needs to be registered with the app. Trainer
needs to have access to their account and form templates. Trainer needs
to be able to view user-submitted health related data in their account.

**Post-conditions**: An output report is generated and sent to the user.

**Main Flow**:

1.  Trainer views received data from user

2.  Trainer crafts recommendations with help their health knowledge

3.  Trainer creates form filled with their recommendations from template

4.  Trainer sends form to user's account

**Alternative Flow:**

1.  Trainer is unable to view received data from user

2.  Trainer notifies user of data
    > issue![](media/image6.jpg){width="3.3906255468066493in"
    > height="3.3906255468066493in"}

**Use Case 2**: Send Feedback/Bug Report

**Actor**: App user

**Description**: The user sends a feedback form to the app developers
regarding some aspect of the app, whether it be a bug, some feature they
would like, or a question about the app itself etc.

**Preconditions**: User needs to be registered with the app and have
access to form submissions

**Post-conditions**: The user receives an automated message that their
feedback form was received and will be processed. If it is a direct
question, the customer will receive an automatic reply that the question
will be answered as soon as possible. If the message relates to the app
software/ features/ functionality it will be responded to accordingly.

**Main Flow**:

1.  User has a question or experiences a bug/error within the app

2.  User navigates to tab to submit a feedback message

3.  User types in their message and submits it

4.  Once the customer sends the message, an automated message is sent
    > back to the user

```{=html}
<!-- -->
```
a.  If the user submits a question: user is responded to

b.  If user submits a bug/error complaint: problem is looked into and
    > resolved

```{=html}
<!-- -->
```
5.  User continues to use the app that is updated to functioning
    > condition

**Alternative Flow:**

1.  User has a question or experiences a bug/error within the app

2.  User navigates to tab to submit a feedback message

3.  User types in their message and doesn't submit it

4.  System cancels the request and returns to home page

![](media/image7.png){width="3.441827427821522in"
height="3.4218755468066493in"}

**Use Case 3**: Input Calories

**Actor**: User

**Description**: Inputting the calorie intake for a meal to track one's
personal health progress or to simply to log one's meal information

**Preconditions**: User needs to be registered with the app. User needs
to be able to select the meal tab and be able to load in chart of their
recorded intakes

**Post-conditions**: User's meal information is entered into a log for
them to see later

**Main Flow**:

1.  User opens the app and navigates to the meal log.

2.  User selects the calendar day for which they want to log the meal

3.  User selects new entry

4.  User enters basic information about the meal (name - breakfast,
    > lunch, other, etc.)

    a.  Scans the nutrition information

    b.  Manually inserts the information for the meal

5.  User submits entry

    a.  User makes another meal entry into the log

6.  The calendar is refreshed and a bullet point entry for the meal is
    > now visible to the user

    a.  User can select a meal and edit it

**Alternative Flow:**

1.  User opens the app and navigates to the meal log.

2.  User selects the calendar day for which they want to log the meal

3.  User selects new entry

4.  User cancels entry

5.  System discards of entry

6.  User is directed to the meal log home page

![](media/image3.png){width="2.3283989501312337in"
height="2.733337707786527in"}

**Use Case 4:** View/Interact with Exercise List

**Actor:** App User

**Description:** User views and selects from a list of exercises
recommended to them based on questions regarding their exercise goals
and/or body type.

**Preconditions:** User needs to be registered with the app. User needs
to be able to select the exercise tab and be able to load in the list of
exercises.

**Post-conditions:** User performs exercise of their choice

**Main Flow:**

1.  User selects exercise tab of app

2.  User scrolls through list

3.  User selects exercise

4.  User views selected exercise in expanded view

5.  User performs selected exercise

**Alternative Flow:**

1.  User selects exercise tab of app

2.  User scrolls through list

3.  User selects exercise

4.  User views selected exercise in expanded view

5.  User cancels selected exercise

6.  User is returned to exercise list page

> ![](media/image2.png){width="2.838542213473316in"
> height="3.485191382327209in"}

**Use Case 5:** Start Timed Exercise Session

**Actor:** App User

**Description:** The user starts a session to perform exercises within a
given timeframe.

**Preconditions:** User needs to be registered with the app. User needs
to be able to select the exercise tab. User needs to be able to load in
a list of exercises.

**Post-conditions:** The session is started and timed for the user.

**Main Flow:**

1.  User selects exercise tab

2.  System will ask the user how long the session is for

3.  User selects desired timer amount

4.  User selects start session

5.  System starts the timer and displays the first exercise

**Alternative Flow:**

1.  User selects exercise tab

2.  System will ask the user how long the session is for

3.  User selected desired timer amount

4.  User selects start session

5.  User cancels session

6.  System halts ongoing timer operations

7.  User is returned to the exercise list page

![](media/image10.jpg){width="3.1391601049868765in"
height="3.12961832895888in"}

**Use Case 6**: Generate Statistics Report

**Actor**: App User

**Description**: User gives trainer a generated report with all the data
pertaining to the health-related activities that they have engaged in.

**Preconditions**: User needs to be registered with the app. User needs
to be able to select the form submission tab and load in a blank
template. User needs to have access to their health data and be able to
load it into a template.

**Post-conditions**: User gives data report to health trainer who can
then give even more personalized recommendations

**Main Flow**:

1.  User clicks on tab to generate report

2.  User generates report

3.  Report can be sent to a health trainer

**Alternative Flow:**

1.  User clicks on tab to generate report

2.  User generates report

3.  User's forwarding of report fails

4.  User is directed back to report home page

5.  User notifies app developers of issue

![](media/image1.jpg){width="3.2552088801399823in"
height="3.2552088801399823in"}

**7. User Stories**

*Write two user stories for each member of the group. They can be
related to the same features described in the use cases or to different
ones. Adopt the following format: \"As a \<ROLE\>, I want \<SOMETHING\>
for that \<GOAL\>.\"Establish a priority level for each user story and
estimate how many hours each one would demand using the planning poker
approach.*

[7.1. User Story 1 - App User - Priority 2, 25 Hours]{.ul}

As an app user I want to be able to input how many calories I intake in
an easy-to-access place so I can manage and track my calorie intake and
manage my weight.

[7.2 User Story 2 - App User - Priority 4, 40 Hours]{.ul}

As an app user I want to be able to view recommended recipes so that I
can have a diet that best fits my health goals.

[7.3 User Story 3 - App User - Priority 10, 20 Hours]{.ul}

As an app user I want to be able to input the nutritional value of my
food so I can form and track a recommended diet so I can eat foods that
fit my health goals.

[7.4 User Story 4 - App User - Priority 3, 30 Hours]{.ul}

As an app user I want to see exercises so that I can choose the workout
plan that best fits my goals.

[7.5 User Story 5 - App User - Priority 5, 100 Hours]{.ul}

As an app user I want to use the RPG game functionality so that I can be
more engaged while performing my health-related goals.

[7.6 User Story 6 - App Developer - Priority 6, 20 Hours]{.ul}

As an app developer, I want to be notified by a user when there is a
problem with the app so that I can fix it.

[7.7 User Story 7 - App User - Priority 11, 15 Hours]{.ul}

As an app user, I want to be able to favorite exercises so that I can
view those same exercises in the future.

[7.8 User Story 8 - App User - Priority 9, 30 Hours]{.ul}

As an app user, I want to know how long I need to exercise to burn a
certain amount of calories so that I can check if I reached my
pre-defined goal.

[7.9 User Story 9 - App User - Priority 8, Hours]{.ul}

As an app user, I want to know different types of exercises in order to
find the ones that best fit my goals so that I can perform the exercise
I want.

[7.10 User Story 10 - App User - Priority 12, 45 Hours]{.ul}

As an app user, I want to be able to view my in game status on my smart
watch so I can view my progress more conveniently while on the go or
exercising.

[7.11 User Story 11 - App User - Priority 7, 40 Hours]{.ul}

As an app user, I want to be able to view exercises assigned to me based
upon my choice level of fitness so that I progress at the speed and
intensity I want.

[7.12 User Story 12 - App User - Priority 1, 80 Hours]{.ul}

As an app user, I want to be able to download My Olakino to my mobile
device so that I can begin my journey to achieving my health goals.

**8. Issue Tracker**

*The user stories should be registered as cards in a public board at
Trello.com or another issue tracker. Include here the link for your
issue tracker and a screenshot of what you did. Create the following
groups on your issue tracker: Backlog(where you put all the planned
cards), To Do in the Current Release, Doing, and Done. From now on, we
expect that you use an issue tracker to manage the project tasks.*

![](media/image5.png){width="2.307292213473316in"
height="3.8548654855643045in"}![](media/image8.png){width="2.156642607174103in"
height="4.695475721784777in"}![](media/image9.png){width="1.9950054680664917in"
height="4.697916666666667in"}

Trello Link:
[[https://trello.com/team_7\_386_spring_21/home]{.ul}](https://trello.com/team_7_386_spring_21/home)
