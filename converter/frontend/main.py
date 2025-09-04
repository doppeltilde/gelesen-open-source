import streamlit as st
import requests
import os
from dotenv import load_dotenv

load_dotenv()

API_URL = os.getenv("API_URL")
if not API_URL:
    st.error(
        "Configuration error: The API_URL environment variable is not set. The application cannot function."
    )
    st.stop()


def show_basic_tutorial():
    st.header("📚 How to add to Gelesen")

    with st.expander("Tutorial", expanded=True):
        st.write(
            """        
        1. After having downloaded the story, **navigate** to your file manager.
        2. Move the downloaded story folder with all its contents to where all Gelesen Stories are stored.
            - Under iOS: Files App > Browse > Gelesen > user_stories
            - Under Android: 
        """
        )


st.markdown(
    """
<style>
    .stAppHeader {
        display: none;
    }
</style>
""",
    unsafe_allow_html=True,
)

st.set_page_config(
    page_title="Gelesen Story Converter",
    page_icon="🤖",
)


st.title("Convert a Seen Story to a Gelesen Story")

uploaded_file = st.file_uploader("Choose a file", type=["xml"])


if uploaded_file is not None:
    file_content = uploaded_file.getvalue()

    if st.button("Upload File"):
        st.info("Sending file...")

        try:
            response = requests.post(
                API_URL,
                data=file_content,
                headers={"Content-Type": "application/xml"},
                stream=True,
            )

            if response.status_code == 200 or response.status_code == 201:
                st.success("File successfully sent!")

                filename = "download.zip"
                if "Content-Disposition" in response.headers:
                    header = response.headers["Content-Disposition"]
                    try:
                        filename = header.split("filename=")[1].strip('"').strip("'")
                    except IndexError:
                        pass

                st.download_button(
                    label="Download Gelesen Story File",
                    data=response.content,
                    file_name=filename,
                    mime="application/zip",
                )
                show_basic_tutorial()
            else:
                st.error(f"Error: {response.status_code}")
                st.write("Response body:")
                try:
                    st.json(response.json())
                except requests.exceptions.JSONDecodeError:
                    st.write(response.text)

        except requests.exceptions.RequestException as e:
            st.error(f"An error occurred: {e}")
