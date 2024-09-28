# EECS449_WQL_Warm-Up
## Qilong's Submission Part1:
+ Implement **two** additional walkers of your choice in the `server.jac` file. The walkers should take parameters and return a response. You can implement any functionality you like.  
   -> **Two additional walkers are named 'reverse_string' and 'time_greeting'**
+ Submit the updated `server.jac` file with the new walkers implemented.  
   -> **See the file "server.jac"**
+ Submit a screenshot of the Swagger documentation showing the new walkers you implemented.  
   -> **See two files "Submission_Part1_Swagger-*.png"**
+ Submit a screenshot of the response from the API when you call the new walkers.  
   -> **See the file "Submission_Part1_response.png"**

## Qilong's Submission Part2:
+ Add some custom documents of your own to the `docs` directory and test the chatbot with these documents. Share a screenshot of the chatbot response to a user query based on the custom documents.  
   -> **See the two folders "docs" and "docs2"**
+ Use 2 different LLMs (of your choosing) to generate responses to user queries. Share a screenshot of the chatbot response to a user query using each LLM.
+ Share the code for the `server.jac` file that includes the RAG module and the MTLLM model where you use the 2 different LLMs. You can submit one file with the code for both LLMs.   
   -> **llama3.1's performance on Biochemistry Tests: see the folder "Submission_Part2_Ollama-bio-test"**  
   -> Originally, server llama3.1 is in the file **"server-ollama.jac"**  
   -> Another 2 LLMs I chose are:  
  &emsp; &emsp; &emsp;      qwen:0.5b:  &emsp; &emsp; &emsp; **See the file "server-qwen_0-5b.jac"**  
  &emsp; &emsp; &emsp; deepseek-coder:  &emsp; **See the file "server-deepseek-coder.jac"**  
  &emsp;   **Their results are collected in the folder "Submission_Part2_Different_LLMs"**  
*( Btw, failed attempt: Hugging Faces' Models are not supported by our Jac language, but still keep the failed files "server_select_1.py" and "server-select-1.jac" )*


## Qilong's Submission Part3:
+ Add a new custom state of your own to the `ChatType` enum. Explain what the state represents and how it can be used in the chatbot.  
   -> **FEEDBACK : 'Feedback provided by the users on the responses from the chatbot. This will make interaction between humans and chatbots more customized to individual needs by the update circles of feedbacks.'**
+ Add your own custom `chat` node to the graph and define its abilities.  
+ Add your custom state to the routing capabilities of the chatbot. Explain how the chatbot will route the user query to your custom chat model based on the classification.  
   -> "Keyword Triggered": ```message.contains("feedback")```
+ Share a screenshot of a conversation with your chatbot showing you custom dialogue routing in action.  
   -> **See the folder "Submission_Part3_New_ChatType"**
+ Share the code for your server.jac file with the updated graph.  
   -> **See the file "server-ollama-Part3.jac"**

## Qilong's Extra Credit:
   [Qilong's Extra Credit PR #1318: 3 Bugs of Jaseci](https://github.com/Jaseci-Labs/jaseci/pull/1318)  
   3 Issues:  

+ **[Issue 1]: Avoid to add duplicate chunks by checking chunk_hash_content:**  
Currently, in our tutorial, we have some bug when we remove duplicate chunks, we only compare chunk_ID before adding them into our database store.
This doesn't seem correct or functional, because we always starting from page_id=0, index_id=0.
I suggest that we compare the content by using hash() function instead of just compare the page_id and index_id.  
*BTW, I am not quite familiar with our Jac syntax, so feel free to correct my code.*

+ **\[Issue 2\]: TYPO:**  
In the spec of [Part 3](https://www.jac-lang.org//learn/tutorial/3_rag-dialogue-routing-chatbot/):  
"We update our interact walker to include the new init_router ability, which initializes the router node and routes the user query to the appropriate model."
should be changed into:
"We add the new infer walker to include the new init_router ability, which initializes the router node and routes the user query to the appropriate model."

+ **[Issue 3]: Lack of Syntax Hint:**  
In the spec of [Part 3](https://www.jac-lang.org//learn/tutorial/3_rag-dialogue-routing-chatbot/):  
I suggest that we add one more hint like
In Jac-Lang, **the order of declaration and definition matters**. If you encountered an issue like "Session.__init__() got an unexpected keyword argument 'id'", please wisely order the nodes and walkers, especially careful when you deal with the mutual reference between node Session and walker interact. This property is similar to the syntax of C++ language.
  
  
  
## Summary - Common GitHub Commands:
   **For only one developer**: 
   ```
   git status
   git add .
   git commit -m "Warm-Up Submission (Part 2) FINISHED!"
   git restore --staged .
   ```
   ```
   git fetch origin
   git merge origin/main
   git push origin main
   ```
## For Qilong - How to use this Repo?
   Check this file: "EECS449 Warm-Up Commands.docx"
