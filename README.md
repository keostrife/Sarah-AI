@KeoStrife

# Sarah AI

Even though Sarah AI development direction was toward being human-like, It is only to the extend that she can accept, understand and execute verbal commands and give appropriate verbal responses back. Sarah is not intended specificly to resemble human behaviour or take part in turing tests. Or does she? Watch her pass all them turing tests

Resources:

- Live demo: http://sarah.sarahai.com/
- GUI for the demo: http://sarah.sarahai.com/GUI/site/

## 1. Direct Response system
                

The most basic form of reaction. If A, respond with B. In fact this is how I started Sarah, just if statements.

### 1.1 Alias System

A conversation consists of ideas and expressions. The idea is "Greeting" someone and the expressions are "Hi", "Hello", "How is it going?". The idea is "Expressing Concern", and the expressions are "Are you ok?", "What is the matter?".

In Sarah AI system, I call `Input`/`Output` as the ideas, and `Input Alias` and `Output Alias` as expressions of those ideas. So for the examples above, "Greeting" and "Expressing Concern" are the Inputs, and the expressions are Input Alias. Similarly when Sarah provides response, she would select the Output matching the Input from user, choose an Output Alias corresponding to the selected Output (currently being chose randomly) and use the alias as a response.

This is still directly responding to user input, but a lot more efficiently and the responses diverse better.

### 1.2 Tags

It is very common for an expression to contain information or nested expression inside. For example, "Hi Mark" contains a "Greeting" expression and the user's first name. "I'm fine thank you" contains the expression of i'm fine and thank you. So for output alias, I use tags to have the same effect. [user]first_name[/user] for example will be replaced by user's first name. I'm fine [express]thank[/express] will be I'm fine + one of the alias for the "thank" output. [ask]age[/ask] will be replaced with a question asked by Sarah (this feature is not yet finalized and will be covered in this documentation once it is). The tag makes Sarah's response becomes dynamic and flexible. You can have maximum 1 nested input, ex: [input]show weather[/input] at [keyword]



Note that you can change the bracket so it's more html like if you want.

### 1.3 Keywords

Since Sarah's focus is to excuting verbal commands, being able to extract keywords from input alias is very important. My current script can only extract keywords stably as long as there are no more than 2 in the same input alias (regex also works). But I'm sure you talents out there can make it work. For example, "Show me puppies" would trigger the "show me [keyword]" alias with "puppies" extracted to be used by applications. A Regex need to be provided with the input alias in order to detect and extrack these keywords properly

## 2. Users

### 2.1 Master user

Initially I want Sarah to be able to take generic inputs, potentially from multiple users. But I ended up with one master user for 1 instance of Sarah. Have you ever seen the movie "OS One"? Yeah...

This is not hard to change later on, the user table is still there.

## 3. Collecting information

###  3.1 Memory Layers

In development

## 4. Application suits

Some of Sarah's responses isn't meant for user but for applications. For example if user ask about the weather, Sarah would reply with `/weather Toronto NOW 24`, applications would then use these parameters to display the information user requested.

I'm not sure if anyone would be bored enough to read this or find this useful but I guess I will develop a application suit myself for Sarah (weather, calender, google lookups, ...). My idea for this is that there can many application suits out there and user can just pick one, plug it in and enjoy. Sarah App store? Maybe? Too far? lol

## 5. To dos

I'm currently working on a context system, which will help Sarah actively ask questions to user and expect a response, identify references (this, that, ...etc), and maybe Sarah can initiate conversations. Actually I have no idea what the fuck I am doing this may be a huge waste of time, but hey I literally have nothing better to do lol

- Handle multiple sentence separated by period? Or "And/OR"
- Rules for users?
	+ 1 sentence at a time
	+ clear grammar
	+ rephrase and retry
	+ ? at the end if it's a question?
	+ Capitalize Names
	+ he she targets only human, not object, don't address cars as she basically
	+ clearly define context?
