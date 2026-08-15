
import functions_framework

@functions_framework.cloud_event
def process_file(cloud_event):
    data = cloud_event.data
    bucket_name = data["bucket"]
    file_name = data["name"]
    content_type = data.get("contentType", "Unknown")

    print(f"File Received:")
    print(f"- Bucket: {bucket_name}")
    print(f"- File Name: {file_name}")
    print(f"- Content Type: {content_type}")