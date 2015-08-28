# API Design

# USER

  - [POST]  users/
  ##### #create
        {
          name: "allan",
          age: 38,  
          email : "someemail@gmail.com",
          address: "Some address here",
          zipCode: 1400,
          country: "méxico",
          telephone: 55555555,
          verified: true
        }
  ##### #response
        {
          name: "allan",
          age: 38,  
          email : "someemail@gmail.com",
          address: "Some address here",
          zipCode: 1400,
          country: "méxico",
          telephone: 55555555,
          verified: true,
          id: 1  
        }

  - [GET]  users/:id
  ##### #show
      {
        name: "allan",
        age: 38,  
        email : "someemail@gmail.com",
        address: "Some address here",
        zipCode: 1400,
        country: "méxico",
        telephone: 55555555,
        verified: true,
        id: 1  
      }

  - [PUT]  users/:id
  ##### #update
        {
          name: "James",
        }
  ##### #response
        {
          name: "James",
          age: 38,  
          email : "someemail@gmail.com",
          address: "Some address here",
          zipCode: 1400,
          country: "méxico",
          telephone: 55555555,
          verified: true,
          id: 1  
        }

  - [DELETE]  users/:id
  ##### #destory
        {
          name: "James",
          age: 38,  
          email : "someemail@gmail.com",
          address: "Some address here",
          zipCode: 1400,
          country: "méxico",
          telephone: 55555555,
          verified: true,
          id: 1  
        }

# POST CONTEXT

  - [POST]  post_context/
  ##### #create
        {
          name: 'news'
        }
  ##### #response
        {
          name: 'news',
          id: 1
        }

  - [GET]  post_context/:id
  ##### #show
        {
          name: 'news',
          id: 1
        }

  - [PUT]  post_context/:id
  ##### #update
        {
          name: 'News'
        }
  ##### #response
        {
          name: 'News',
          id: 1
        }

  - [DELETE]  post_context/:id
  ##### #destroy
        {
          name: 'News',
          id: 1
        }

# POST

  - [POST]  post/
  ##### #create
        {
          user: 'ever',
          text: 'somePost text here',
          context: 1,
          contextId: 1,
          category: 1,
          image: 'assets/... .png',
          video: 'assets/... .mpg4',
          like: 3  
        }
  ##### #response
        {
          user: 'ever',
          text: 'somePost text here',
          context: 1,
          contextId: 1,
          category: 1,
          image: 'assets/... .png',
          video: 'assets/... .mpg4',
          like: 3,
          id: 1
        }

  - [GET]  post/:id
  ##### #show
        {
          user: 'ever',
          text: 'somePost text here',
          context: 1,
          contextId: 1,
          category: 1,
          image: 'assets/... .png',
          video: 'assets/... .mpg4',
          like: 3,
          id: 1
        }
  - [PUT]  post/:id
  ##### #update
        {
          user: 'Everardo Sánchez'
        }
  ##### #response
        {
          user: 'Everardo Sánchez',
          text: 'somePost text here',
          context: 1,
          contextId: 1,
          category: 1,
          image: 'assets/... .png',
          video: 'assets/... .mpg4',
          like: 3,
          id: 1
        }

  - [DELETE]  post/:id
  ##### #destroy
        {
          user: 'Everardo Sánchez',
          text: 'somePost text here',
          context: 1,
          contextId: 1,
          category: 1,
          image: 'assets/... .png',
          video: 'assets/... .mpg4',
          like: 3,
          id: 1
        }

# POST CATEGORY

  - [POST]  post_category/
  ##### #create
        {
          name: 'health'
        }
  ##### #response
        {
          name: 'health',
          id: 1
        }

  - [GET]  post_category/:id
  ##### #show
        {
          name: 'health',
          id: 1
        }

  - [PUT]  post_category/:id
  ##### #update
        {
          name: 'Health'
        }
  ##### #response
        {
          name: 'Health',
          id: 1
        }

  - [DELETE]  post_category/:id
  ##### #destroy
        {
          name: 'Health',
          id: 1
        }

# TYPE GOALS

  - [POST]  type_goals/
  ##### #create
        {
          type: "Weight"
        }
  ##### #response
        {
          type: "Weight",
          id: 1
        }

  - [GET]  type_goals/:id
  ##### #show
        {
          type: "Weight",
          id: 1
        }

  - [PUT]  type_goals/:id
  ##### #update
        {
          type: "Peso"
        }
  ##### #response
        {
          type: "Peso",
          id: 1
        }

  - [DELETE]  type_goals/:id
  ##### #destroy
        {
          type: "Peso",
          id: 1
        }

# STATISTICS

  - [POST]  statistics/  
  ##### #create
        {
          type_goal: 1,
          user: 1,
          quantity: 23.50,
          date: "2015-07-09 03:18:13.094861"
        }
  ##### #response
        {
          type: 1,
          user: 1,
          quantity: 23.50,
          date: "2015-07-09 03:18:13.094861",
          id: 1
        }

  - [GET]  statistics/:id
  ##### #show
        {
          type: 1,
          user: 1,
          quantity: 23.50,
          date: "2015-07-09 03:18:13.094861",
          id: 1
        }
  - [PUT]  statistics/:id
  ##### #update
        {
          quantity: 40.50
        }
  ##### #response
        {
          type: 1,
          user: 1,
          quantity: 23.50,
          date: "2015-07-09 03:18:13.094861",
          id: 1
        }

  - [DELETE]  statistics/:id
  ##### #destroy

# GOALS

  - [POST]  goals/
  ##### #create
        {
          user: 1,
          type_goal: 1,
          start: 30,
          current: 12,
          desire: 11
        }
  ##### #response
        {
          user: 1,
          type_goal: 1,
          start: 30,
          current: 12,
          desire: 11,
          id: 1
        }

  - [GET]  goals/:id
  ##### #show
        {
          user: 1,
          type_goal: 1,
          start: 30,
          current: 12,
          desire: 11,
          id: 1
        }

  - [PUT]  goals/:id
  ##### #update
        {
          current: 11
        }
  ##### #response
        {
          user: 1,
          type_goal: 1,
          start: 30,
          current: 11,
          desire: 11,
          id: 1
        }

  - [DELETE]  goals/:id
  ##### #destroy
        {
          user: 1,
          type_goal: 1,
          start: 30,
          current: 11,
          desire: 11,
          id: 1
        }

# PROJECT

  - [POST]  project/
  ##### #create
        {
          user: 1,
          name: 'project name',
          socialProblem: 'social',
          impact: 'huge',
          description: 'project description',
          image: 'assets/ ... .jpg'
        }
  ##### #response
        {
          user: 1,
          name: 'project name',
          socialProblem: 'social',
          impact: 'huge',
          description: 'project description',
          image: 'assets/ ... .jpg'  
          id: 1
        }

  - [GET]  project/:id
  ##### #show
        {
          user: 1,
          name: 'project name',
          socialProblem: 'social',
          impact: 'huge',
          description: 'project description',
          image: 'assets/ ... .jpg',
          id: 1
        }

  - [PUT]  project/:id
  ##### #update
        {
          socialProblem: 'SOCIAL',
        }

  ##### #response
        {
          user: 1,
          name: 'project name',
          socialProblem: 'social',
          impact: 'huge',
          description: 'project description',
          image: 'assets/ ... .jpg',
          id: 1
        }

  - [DELETE]  project/:id
  ##### #destroy
        {
          user: 1,
          name: 'project name',
          socialProblem: 'social',
          impact: 'huge',
          description: 'project description',
          image: 'assets/ ... .jpg',
          id: 1
        }

# PAYMENT

  - [POST]  payment/
  ##### #create
        {
          user: 1,
          transaction: 323,
          method: 'credit card',
          amount: 300.09  
        }
  ##### #response
        {
          user: 1,
          transaction: 323,
          method: 'credit card',
          amount: 300.09,
          id: 1
        }

  - [GET]  payment/:id
  ##### #show
        {
          user: 1,
          transaction: 323,
          method: 'credit card',
          amount: 300.09,
          id: 1
        }

  - [PUT]  payment/:id
  ##### #update
        {
          amount: 350.00
        }
  ##### #response
        {
          user: 1,
          transaction: 323,
          method: 'credit card',
          amount: 350.00,
          id: 1
        }

  - [DELETE]  payment/:id
  ##### #destroy
        {
          user: 1,
          transaction: 323,
          method: 'credit card',
          amount: 350.00,
          id: 1
        }

# EVENT

  - [POST]  events/
  ##### #create
        {
          name: 'cyclist',
          info: 'boring info here',
          dateAndHour: '2015-07-09 03:18:13.094861',
          creator: 1  
        }
  ##### #response
        {
          name: 'cyclist',
          info: 'boring info here',
          dateAndHour: '2015-07-09 03:18:13.094861',
          creator: ,
          id: 1  
        }

  - [GET]  events/:id
  ##### #show
        {
          name: 'cyclist',
          info: 'boring info here',
          dateAndHour: '2015-07-09 03:18:13.094861',
          creator: 1 ,
          id: 1
        }

  - [PUT]  events/:id
  ##### #update
        {
          name: 'Cross fit'
        }
  ##### #response
        {
          name: 'Cross fit',
          info: 'boring info here',
          dateAndHour: '2015-07-09 03:18:13.094861',
          creator: 1,
          id: 1
        }

  - [DELETE]  events/:id
  ##### #destroy
        {
          name: 'Cross fit',
          info: 'boring info here',
          dateAndHour: '2015-07-09 03:18:13.094861',
          creator: 1,
          id: 1
        }

# GROUP

  - [POST]  groups/
  ##### #create
        {
          name: 'ciclysting',
          description: 'some description group'
        }
  ##### #response
        {
          name: 'ciclysting',
          description: 'some description group',
          id: 1
        }

  - [GET]  groups/:id
  ##### #show
        {
          name: 'ciclysting',
          description: 'some description group',
          id: 1
        }

  - [PUT]  groups/:id
  ##### #update
        {
          name: 'Cyclers',
          description: 'some description group'
        }
  ##### #response
        {
          name: 'Cyclers',
          description: 'some description group',
          id: 1
        }

  - [DELETE]  groups/:id
  ##### #destroy
        {
          name: 'Cyclers',
          description: 'some description group',
          id: 1
        }
