# Basic Gotify notification when the Container is started in Docker optimized for Unraid

This is a simple container that sends a message when the container is started (needed this for a headless machine to know when I can connect or better speaking start up the VM's with WOL).  
  
If using the string `HOST_IP` in the message text the container will try to replace this string with the Host IP address - this will only work when the container is ran on the host network!


## Env params
| Name | Value | Example |
| --- | --- | --- |
| GOTIFY_URL | Gotify Server URL (with trailing slash '/') | https://push.example.net/ |
| GOTIFY_USER_TOKEN | Gotify User Token | YOURSECRETUSERTOKEN |
| GOTIFY_TITLE | Customized Gotify Message Title | Startup Complete |
| GOTIFY_MESSAGE | Customized Gotify Message | Server is now Online! |
| GOTIFY_PRIORITY | Customize the Gotify Priority ('0': Low Priority ; '5': Normal Priority ; '9': High Priority) | 5 |

## Run example
```
docker run --name GotifyOnStart -d \
    --env 'GOTIFY_URL=YOURGOTIFYURL' \
    --env 'GOTIFY_USER_TOKEN=YOURSECRETUSERTOKEN' \
    --env 'GOTIFY_TITLE=Startup Complete' \
    --env 'GOTIFY_MESSAGE=Server is now Online!' \
    --env 'GOTIFY_PRIORITY=5' \
    --net='host' \
    ich777/gotify-on-start
```


#### Support Thread: https://forums.unraid.net/topic/83786-support-ich777-application-dockers/