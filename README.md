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
-Update Login complete
* User can upload a picture and lay over with text.
* User able to like, and favorite memes.
* Profile pages for each user
* Settings (Accessibility, General, etc.)
-Update Settings screen created
-Persistant Log in 
-User is able to switch between camera and album
-User is able to logout

## User Story Update- 
* Users are able to open camera from Mobile device of Photo library from simulator

<img src="https://github.com/jtmlock/MemeGenerator/blob/master/MemeGeneratorWalkthrough2.gif"><br>

## User Story Upate- 
* Users are able to load images through parse server, with comments and scroll through them

<img src="https://github.com/jtmlock/MemeGenerator/blob/master/MemeImagesLoadedToHeroku.gif"><br>

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

### Gif of Progress
<img src="https://github.com/jtmlock/MemeGenerator/blob/master/MemeGeneratorWalkthrough1.gif"><br>

### Gif of Progress showing switching between camera and Album with log out feature
<img src="https://github.com/jtmlock/MemeGenerator/blob/master/MemeSwitchingBetween12.gif"><br>

## Schema

##  Meme Generator - Schema Design
<ol>
<li>User</li>
<li>Posts - Memes</li>
<li>Comments</li>
<li>Likes</li>
<li>Follow</li>
<li>Text</li>
</ol>
<ol>
<li>User</li>
	<ul><li>objectId</li>
	<li>createdAt</li>
	<li>Updated password At</li></ul>
<li>Post - Meme</li>
	<ul><li>objectId</li>
	<li>Author</li>
	<li>Image</li>
	<li>Caption</li>
	<li>Comment Count</li>
	<li>Likes Count</li>
	<li>createdAt</li>
	<li>UpdatedAt</li></ul>
<li>Comment</li>
	<ul><li>objectId</li>
	<li>Author</li>
	<li>createdAt</li>
	<li>UpdatedAt</li></ul>
<li>Likes</li>
	<ul><li>objectId</li>
	<li>Author</li>
	<li>createdAt</li></ul>
<li>Follow</li>
	<ul><li>objectId</li>
	<li>Author</li>
	<li>createdAt</li></ul>
<li>Text</li>
	<ul><li>objectId</li>
	<li>Author</li>
	<li>createdAt</li></ul>
</ol>

## Data Model 

<table>
	<tr><td> </td> <td>Property</td><td>Type</td><td>Description</td></tr>
<tr><td>Model User</td> <td> </td> <td> </td> <td> </td> </tr>
	<tr><td> </td> <td>objectId</td> <td>String</td> <td>unique User ID</td> </tr>
	<tr><td> </td> <td>createdAt</td> <td>DateTime</td> <td>date when login was created (default)</td> </tr>
	<tr><td> </td> <td>UpdatedAt</td> <td>DateTime</td> <td>date password was changed</td> </tr>
	
<tr><td>Model Post</td> <td> </td> <td> </td> <td> </td> </tr>
	<tr><td> </td> <td>objectId</td> <td>String</td> <td> Unique ID for the User post (default)</td></tr>
	<tr><td> </td> <td>Author</td> <td>pointerToUser</td> <td>image Author</td></tr>
	<tr><td> </td> <td>Image</td> <td>File</td> <td>image that user posts</td></tr>
	<tr><td> </td> <td>Caption</td> <td>String</td> <td>meme caption by author</td></tr>
	<tr><td> </td> <td>Comment Count</td> <td>Number</td> <td>number of comments that have been posted</td> </tr>
	<tr><td> </td> <td>Likes Count</td> <td>Number</td> <td>number of likes that have been posted</td> </tr>
	<tr><td> </td> <td>createdAt</td> <td>DateTime</td> <td>date when post was created</td> </tr>
	<tr><td> </td> <td>UpdatedAt</td> <td>DateTime</td> <td>date when meme was last updated</td> </tr>
	
<tr><td>Model Comment</td> <td> </td> <td> </td> <td> </td> </tr>
	<tr><td> </td> <td>objectId</td> <td>String</td> <td>unique ID for the comment</td> </tr>
	<tr><td> </td> <td>Author</td> <td>pointer to User</td> <td>comment Author</td> </tr>
	<tr><td> </td> <td>createdAt</td> <td>DateTime</td> <td>date when the comment was created</td> </tr>
	<tr><td> </td> <td>UpdatedAt</td> <td>DateTime</td> <td>date if/when the comment was updated</td> </tr>

<tr><td>Model Likes</td> <td> </td> <td> </td> <td> </td> </tr>
	<tr><td> </td> <td>objectId</td> <td>String</td> <td>unique Like ID</td> </tr>
	<tr><td> </td> <td>authorWho</td> <td>pointerToUser</td> <td>Like author</td> </tr>
	<tr><td> </td> <td>createdAt</td> <td>DateTime</td> <td>date Like was created</td> </tr>
	
<tr><td>Model Follow</td> <td> </td> <td> </td> <td> </td> </tr>
	<tr><td> </td> <td>objectId</td> <td>String</td> <td>unique Follow ID</td> </tr>
	<tr><td> </td> <td>authorWho</td> <td>pointerToUser</td> <td>Follow author</td> </tr>
	<tr><td> </td> <td>createdAt</td> <td>DateTime</td> <td>date Follow was created</td> </tr>
	
<tr><td>Model Text</td> <td> </td> <td> </td> <td> </td> </tr>
	<tr><td> </td> <td>objectId</td> <td>String</td> <td>unique Text ID</td> </tr>
	<tr><td> </td> <td>authorWho</td> <td>pointerToUser</td> <td>Text author</td> </tr>
	<tr><td> </td> <td>createdAt</td> <td>DateTime</td> <td>date Text was created</td> </tr>
</table>



<table>
	<tr><th>Network Requests</th> <td> </td> <td> </td> </tr>
	<tr><td>CRUD</td> <td> HTTP VERB </td> <td> Example </td> </tr>
	<tr><td>Create</td> <td> POST </td> <td> Creating a new post </td> </tr>
	<tr><td>Read</td> <td> GET </td> <td> Fetching posts for user’s feed </td> </tr>
	<tr><td>Update</td> <td> PUT </td> <td> Changing a user’s profile image </td> </tr>
	<tr><td>Delete</td> <td> DELETE </td> <td> Deleting a comment </td> </tr>
</table>
	
		

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
<tr><th>-Login Screen</th><th> </th><th> </th></tr>
  <tr><td> </td>
        <td>(Read/GET)</td>
	<td>Query Login</td></tr>
	<tr><td> </td>	
	<td>(Create/POST)</td>
	<td>Create User Login</td></tr>
  <tr><th>-Meme Feed</th><th> </th><th> </th></tr>
	<tr><td> </td>
	<td>(Read/GET)</td>
	<td>Query post where user is Author</td></tr>
	<tr><td> </td>
	<td>(Create/POST)</td>
	<td>Create a new like / comment on Post</td></tr>
	<tr><td> </td>
	<td>(Delete/DELETE)</td>
	<td>Delete existing like / comment</td></tr>
  <tr><th>-Profile</th><th> </th><th> </th></tr>
	<tr><td> </td>
	<td>(Read/GET)</td>
	<td>Query logged in user object</td></tr>
	<tr><td> </td>
	<td>(Update/PUT)</td>
	<td>Update user profile image</td></tr>
  <tr><th>-Generator</th><th> </th><th> </th></tr>
  	<tr><td> </td>
	<td>(Read/GET)</td>
	<td>Query images</td></tr>
	<tr><td> </td>
	<td>(Create/POST)</td>
	<td>Create a new Meme</td></tr>
</table>




## OPTIONAL Heroku Endpoints

<table>
<tr> <th>HTTP VERB</th> <th>Endpoint</th> <th>Decription</th> </tr>
<tr> <td>POST</td><td><code> https://hc-central.heroku.com/auth/<app_name_or_app_uuid> </code></td><td> Link the new add-on to your Heroku user account </td> </tr>
<tr> <td>POST</td><td><code> /connections/<connection_id>/actions/import </code></td><td> Import a mapping configuration <td> </tr>
<tr> <td>GET</td><td><code> /connections/<connection_id>  </code></td><td> Monitor the connection and mapping status </td> </tr>
<tr> <td>POST</td><td><code> /connections/<connection_id>/actions/pause </code></td><td> Pause the connection </td> </tr>
<tr> <td>POST</td><td><code> /connections/<connection_id>/actions/resume </code></td><td> Once Paused, it can be Resumed</td> </tr>
<tr> <td>POST</td><td><code> /connections/<connection_id>/actions/restart </code></td><td> Restart the connection </td> </tr>
<tr> <td>POST</td><td><code> /mappings/<mapping_id>/actions/reload </code></td><td> Reload a mapping </td> </tr>
<tr> <td>GET</td><td><code> /mappings/<mapping_id> </code></td><td> Get mapping details </td> </tr>
<tr> <td>POST</td><td><code> /connections/<connection_id>/mappings </code></td><td> Create a new Mapping </td> </tr>
<tr> <td>PUT</td><td><code> /mappings/<mapping_id> </code></td><td> Edit existing mapping </td> </tr>
<tr> <td>DELETE</td><td><code>/mappings/<mapping_id> </code></td><td> Delete existing mapping </td> </tr>
</table>
