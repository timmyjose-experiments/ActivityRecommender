Dummy domain: https://my-test-domain.com


Generate App Clip code locally:

```
AppClipCodeGenerator generate \
    --url 'https://my-test-domain.com/appclip' \
    --type cam \
    --foreground E0FF31 \
    --background 000000 \
    --output activtyRecommenderAppClipCode.svg

```


Testing App Clip invocation locally:

1. Go to Settings -> Developer -> App Clips Testing.

2. Click `Local Experiences` -> `Register Local Experience`

3. 
    * Set url prefix with the domain set above (https:/./my-test-domain.com)
    * Set the bundle id as: `com.timmyjose.ActivityRecommender.Clip` (not the `.Clip` at the end!)
    * Set details for the app clip card:
        - Title: Activity Recommender
        - Subtitle: Recommends daily activities
        - Action: Open (default)

Now scan the App Clip code generated previously, and it should show the App Clip Card.
Clicking `Open` on the App Clip Card should open the app clip.

    
