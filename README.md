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
