# MemeGenerator

CSN iOS 238 Spring Profe

MEME GENERATION

Unit 8: Group Milestone  - Meme Generator - README Example
===

:::info
**Unit 8 Group Milestone - Meme Generator - Submission**.
:::

# MEME GENERATOR

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)

## Overview
### Description
Allows .

### App Evaluation
- **Category:** Social Networking
- **Mobile:**
This app will be developed for Mobile 

- **Story:** 
Uses pictures and text, to display and/ or create Memes. The User will be able to create Memes, like Memes, and have a friends list.

- **Market:** Any individual could choose to use this app, and to keep it a safe environment, people would be organized into a friends lists

- **Habit:** This app could be used as often or infrequently as the user wanted depending on how deep their social life is, and what exactly they're looking for.

- **Scope:** First we would start with pairing people based on music taste, then perhaps this could evolve into a music sharing application as well to broaden its usage. Large potential for use with Facebook, Reddit, Instagram, Snapchat, and other image posting social media outlets.

## Product Spec
### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User logs in to access previous Memes and preference settings
* User can upload a picture and lay over with text.
* User able to like, and favorite memes.
* Profile pages for each user
* Settings (Accessibility, General, etc.)

**Optional Nice-to-have Stories**

*  Able to search for friends
*  User can share Memes.
* Light Mode Dark Mode Toggle
* Forgot password feature

### 2. Screen Archetypes

*Splash
* Login 
* Register - User signs up or logs into their account
   * Upon Download/Reopening of the application, the user is prompted to log in to gain access to their profile information to be properly matched with another person. 
   * …
* Profile  / Setting Screen 
   * Allows user to upload a photo and fill in information that is interesting to them and others
         * this is Meme Generator *
* Meme Scroll  Timeline Screen.
   * Allows user to be able to find friends and add them.


### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Splash
* Login
* Memes
* Settings / Profile
* Generator

**Flow Navigation** (Screen to Screen)
* Forced Log-in -> Account creation if no log in is available
* Meme Selection Scroll (Or Queue if Optional)
* Generator ->
* Profile -> Text field to be modified. 
* Settings -> Toggle settings



## Wireframes
<img src="https://github.com/jtmlock/MemeGenerator/blob/master/Meme%20Generator%20WireFrame.jpg"><br>

### [BONUS] Digital Wireframes & Mockups
<img src="https://github.com/jtmlock/MemeGenerator/blob/master/Meme%20Generator%20Digital%20Wireframe.jpg"><br>

### [BONUS] Interactive Prototype
<img src="http://g.recordit.co/GcLpBNYKa7.gif"><br>

## Schema

##  Meme Generator - Schema Design

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. User<br> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. Posts - Memes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. Comments<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. Likes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5. Follow<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6. Text<br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. User<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;objectId<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;createdAt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Updated password At<br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. Post - Meme<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;objectId<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Author<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Image<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Caption<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Comment Count<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Likes Count<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;createdAt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UpdatedAt<br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. Comment<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;objectId<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Author<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;createdAt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UpdatedAt<br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. Likes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;objectId<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Author<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;createdAt<br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5. Follow<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;objectId<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Author<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;createdAt<br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6. Text<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;objectId<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Author<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;createdAt<br>

## Data Model 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Property&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Description<br>
Model	User<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;objectId&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unique User ID<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;createdAt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DateTime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;date when login was created (default)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UpdatedAt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DateTime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;date password was changed<br>

Model	Post <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;objectId&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Unique ID for the User post (default)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Author&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pointerToUser&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;image Author<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Image&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;image that user posts<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Caption&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;meme caption by author<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Comment Count&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;number of comments that have been posted<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Likes Count&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;number of likes that have been posted<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;createdAt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DateTime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;date when post was created <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UpdatedAt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DateTime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;date when meme was last updated<br>

Model Comment<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;objectId&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unique ID for the comment<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Author&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pointer to User&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;comment Author<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;createdAt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DateTime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;date when the comment was created<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UpdatedAt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DateTime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;date if/when the comment was updated<br>

Model Likes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;objectId&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unique Like ID<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;authorWho&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pointerToUser&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Like author<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;createdAt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DateTime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dateLike was created<br>

Model Follow<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;objectId&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unique Follow ID<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;authorWho&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pointerToUser&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Follow author<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;createdAt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DateTime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;date Follow was created<br>

Model Text<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;objectId&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unique Text ID<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;authorWho&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pointerToUser&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Text author<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;createdAt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DateTime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;date Text was created<br>


<b> Network Requests (ONLY 4 actions you can take on objects)</b> <br>
CRUD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;HTTP Verb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Example<br>
Create&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;POST&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Creating a new post<br>
Read&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GET&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fetching posts for user’s feed<br>
Update&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PUT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Changing a user’s profile image<br>
Delete&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DELETE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Deleting a comment<br>

## Network Requests <br> 
-Login Screen<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<code>let query = PFQuery(className:"Post")</code><br>
<code>query.whereKey("author", equalTo: currentUser)</code><br>
<code>query.order(byDescending: "createdAt")</code><br>
<code>query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in</code><br>
   <code>if let error = error { </code><br>
      <code>print(error.localizedDescription)</code><br>
   <code>} else if let posts = posts {</code><br>
      <code>print("Successfully retrieved \(posts.count) posts.")</code><br>
  <code>// TODO: Do something with posts...</code><br>
   <code>}</code><br>
<code>}</code><br>

## Network Requests 

<table>
  <tr>
    <th>-Login Screen</th><th> </th><th> </th>
    </tr>
  <tr>
      <td> </td>
      <td>(Read/GET)Query Login</td>
      <td>(Create/POST)	Create User Login</td>
  </tr>
  <tr>
    <th>-Meme Feed</th><th> </th><th> </th>
  </tr>
  <tr>
	  <td> </td>
	  <td>(Read/GET)</td>
	  <td>Query post where user is Author</td>
	</tr>
	<tr>
	<td> </td>
	  <td>(Create/POST)</td>
	  <td>Create a new like / comment on Post</td>
	</tr>
	<tr>
	<td> </td>
      <td>(Delete/DELETE)	Delete existing like / comment</td>
  </tr>   
  <tr>
    <th>-Profile</th><th> </th><th> </th>
   </tr>
   <tr>
	<td> </td>
	<td>(Read/GET)</td>
	<td>Query logged in user object</td>
	</tr>
	<tr>
	<td> </td>
	<td>(Update/PUT)</td>
	<td>Update user profile image</td>
  </tr>
  <tr>
    <th>-Generator</th><th> </th><th> </th>
  </tr>
  <tr>
	  <td> </td>
	  <td>(Read/GET)</td>
	  <td>Query images</td>
	  	</tr>
	<tr>
	<td> </td>
	  <td>(Create/POST)</td>
	  <td>Create a new Meme</td>
   </tr>
</table>




## OPTIONAL Heroku Endpoints

HTTP VERB<br>
Link the new add-on to your Heroku user account<br>
POST https://hc-central.heroku.com/auth/<app_name_or_app_uuid><br>

Import a mapping configuration<br>
POST /connections/<connection_id>/actions/import<br>

Monitor the connection and mapping status<br>
GET /connections/<connection_id><br>

Pause the connection<br>
POST /connections/<connection_id>/actions/pause<br>

Once Paused, it can be Resumed<br>
POST /connections/<connection_id>/actions/resume<br>

Restart the connection<br>
POST /connections/<connection_id>/actions/restart<br>

Reload a mapping<br>
POST /mappings/<mapping_id>/actions/reload<br>

Get mapping details<br>
GET /mappings/<mapping_id><br>

Create a new Mapping<br>
POST /connections/<connection_id>/mappings<br>

Edit existing mapping<br>
PUT /mappings/<mapping_id><br>

Delete existing mapping<br>
DELETE /mappings/<mapping_id><br>

<table>
  <tr>
    <th>Month</th>
    <th>Savings</th>
  </tr>
  <tr>
    <td>January</td>
    <td>$100</td>
  </tr>
</table>
