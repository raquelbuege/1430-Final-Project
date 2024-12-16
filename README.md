## Bus Tracker Application

This application aims to help individuals navigate Pittsburgh's bus lines meanwhile offering a simplistic but feature rich interface. 
It also offers accessibile options to users and information about positive environmental impacts of using public transport. 

## Getting Started

1. Obtain a [Google Cloud API Key ](https://cloud.google.com/gcp?utm_source=google&utm_medium=cpc&utm_campaign=na-US-all-en-dr-bkws-all-all-trial-b-dr-1707554&utm_content=text-ad-none-any-DEV_c-CRE_665735450771-ADGP_Hybrid+%7C+BKWS+-+BRO+%7C+Txt-Top-Google+Cloud-KWID_43700081237254618-kwd-4406040420&utm_term=KW_google%20cloud-ST_google+cloud&gad_source=1&gclid=Cj0KCQiAvP-6BhDyARIsAJ3uv7YQ_He-z6o9qLupyUj0u5WgScfr3C7rudKdj34tstkBswomDUJbl48aAsRCEALw_wcB&gclsrc=aw.ds) with Android SDK map permissions. 
2. Uncomment and paste the API key into the according section below in the android/app/src/main/AndroidManifest.xml file under the application tag.

   ```<meta-data android:name="com.google.android.geo.API_KEY" android:value="<insert API key here>"/>```

Follow the steps below to run the application: 
```
git clone
cd bus_tracker
flutter pub get
flutter run
```
In order to navigate our application to simulate a specific user: 
1. Click "Where To?" towards the middle of the page.
2. Click "Home" 
3. Click "61B"
4. Click "GO"
5. Click "Ticket" located on the bottom navigation bar.
6. Toggle between "Buy Tickets" and "Wallet" at the top of the page.
7. Click "Profile" at the bottom of the navigation bar.
8. Click "Planet" at the bottom of the navigation bar.
9. Click "Settings" at the bottom of the navigation bar and scroll through the different options.

https://github.com/user-attachments/assets/9d73a233-a0e4-4d30-9b98-d6c0cd7177f2

## Works Cited
[Link to cited resources](https://pitt-my.sharepoint.com/:w:/g/personal/rlb143_pitt_edu/ESBI80XCPbJHpq6m9HymiEcBKepGF_POl6X0xF_wKz0PDg?e=p8K9Pc)

ChatGPT was utilized during this project in order to set up the screens, navigation, and other cosmetic details. For a more thorough explanation please reach out to any group member to discuss our application. Widgets including the slider, toggle, and dropdown were also taken from the flutter documentation, which is cited in our works cited. 

ChatGPT included but is not limited to:
1. Setting up Navigation bar on the bottom and its according functionality, and adding additional icons.
2. Increasing icon sizes.
3. Increasing text sizes.
4. Using Align() in the Go Starting, Home, Planet, Profile, Search, Select Route pages.
5. Adjusting the dropdown widget.
6. Making a Google Map widget that's reusable in the different pages. 
7. Padding of widgets. 
