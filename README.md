# MockAPI



## Getting started
`docker-compose up -d`

## Step-by-Step Guide to Use Postman

#### Step 1: Install Postman
- Download and install Postman from the [official website](https://www.postman.com/downloads/).

#### Step 2: Open Postman
- Launch Postman after installation.

#### Step 3: Create a New Request

1. **Click on the "New" button** in the top left corner.
2. **Select "Request"**.

#### Step 4: Configure the Request

1. **Name your request** and optionally provide a description.
2. **Choose or create a new collection** to save your request.

#### Step 5: Set Up the Request Details

1. **Method**: Select `POST` from the dropdown menu.
2. **URL**: Enter the URL `http://localhost:3000/v1/chat/completions`.

#### Step 6: Add Headers (if required)
- In your case, since the global rule requiring the `Authorization` header was removed, you don’t need to add any specific headers unless your Mockoon server still requires them.

#### Step 7: Create the Request Body

1. **Click on the "Body" tab** below the URL field.
2. **Select "raw"** and choose `JSON` from the dropdown menu on the right.

#### Step 8: Enter the JSON Body

Based on your `mockoon.json`, here's the JSON body to use:

```json
{
  "model": "gpt-3.5-turbo-0125",
  "prompt": "Hello, how can I help you?",
  "temperature": 0.7
}
```

You can adjust the fields according to your needs.

#### Step 9: Send the Request

1. **Click the "Send" button**.
2. **View the response** in the lower pane of Postman.

### Additional Requests

You can set up other requests based on the provided `mockoon.json` configuration:

1. **Unauthorized Endpoint**: If you access `http://localhost:3000/` without the `Authorization` header, you should get:
   
   ```json
   {
     "error": "Unauthorized"
   }
   ```

2. **Custom Endpoint**: For the endpoint `http://localhost:3000/getAbstracts`, you might need to configure additional details based on what the endpoint requires.

### Summary

- **POST Request**:
  - URL: `http://localhost:3000/v1/chat/completions`
  - Headers: (Optional, if required)
  - Body (JSON):
    ```json
    {
      "model": "gpt-3.5-turbo-0125",
      "prompt": "Hello, how can I help you?",
      "temperature": 0.7
    }
    ```

This guide should help you set up and send requests using Postman to your Mockoon server. If you need to handle specific headers or additional endpoints, you can configure them similarly by referring to the details in your `mockoon.json` file.
