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

Meme Generator - Schema Design

<pre>1. User </pre>
<pre>2. Posts - Memes</pre>
<pre>3. Comments</pre>
<pre>4. Likes</pre>
<pre>5. Follow</pre>
<pre>6. Text</pre>

<pre>1. User</pre>
<pre><pre>objectId</pre>
<pre><pre>createdAt</pre>
<pre><pre>Updated password At</pre>

<pre>2. Post - Meme</pre>
<pre><pre>objectId</pre>
<pre><pre>Author</pre>
<pre><pre>Image</pre>
<pre><pre>Caption</pre>
<pre><pre>Comment Count</pre>
<pre><pre>Likes Count</pre>
<pre><pre>createdAt</pre>
<pre><pre>UpdatedAt</pre>

<pre>3. Comment</pre>
<pre><pre>objectId</pre>
<pre><pre>Author</pre>
<pre><pre>createdAt</pre>
<pre><pre>UpdatedAt</pre>

<pre>4. Likes</pre>
<pre><pre>objectId</pre>
<pre><pre>Author</pre>
<pre><pre>createdAt</pre>

<pre>5. Follow</pre>
<pre><pre>objectId</pre>
<pre><pre>Author</pre>
<pre><pre>createdAt</pre>

<pre>6. Text</pre>
<pre><pre>objectId</pre>
<pre><pre>Author</pre>
<pre><pre>createdAt</pre>

Data Model

<pre>Property<pre><pre>Type<pre><pre>Description</pre>
Model	User
<pre>objectId<pre><pre><pre>String<pre><pre><pre>unique User ID</pre>
<pre>createdAt<pre><pre>DateTime<pre><pre>date when login was created (default)</pre>
<pre>UpdatedAt<pre><pre>DateTime<pre><pre>date password was changed</pre>

Model	Post 
<pre>objectId<pre><pre>String<pre><pre>Unique ID for the User post (default)</pre>
<pre>Author<pre><pre>pointerToUser<pre><pre>image Author</pre>
<pre>Image<pre><pre>File<pre><pre>image that user posts</pre>
<pre>Caption<pre><pre>String<pre><pre>meme caption by author</pre>
<pre>Comment Count<pre><pre>Number<pre><pre>number of comments that have been posted/<pre>
<pre>Likes Count<pre><pre>Number<pre><pre>number of likes that have been posted</pre>
<pre>createdAt<pre><pre>DateTime<pre><pre>date when post was created </pre>
<pre>UpdatedAt<pre><pre>DateTime<pre>date when meme was last updated</pre>

Model Comment
<pre><pre>objectId<pre><pre>String<pre><pre>unique ID for the comment</pre>
<pre><pre>Author<pre><pre>pointer to User<pre>comment Author</pre>
<pre><pre>createdAt<pre><pre>DateTime<pre><pre>date when the comment was created</pre>
<pre><pre>UpdatedAt<pre><pre>DateTime<pre><pre>date if/when the comment was updated</pre>

Model Likes
<pre><pre>objectId<pre><pre>String<pre><pre>unique Like ID</pre>
<pre><pre>authorWho<pre><pre>pointerToUser<pre><pre>Like author</pre>
<pre><pre>createdAt<pre><pre>DateTime<pre><pre>dateLike was created</pre>

Model Follow
<pre>objectId<pre><pre>String<pre><pre><pre>unique Follow ID</pre>
<pre>authorWho<pre><pre>pointerToUser<pre><pre>Follow author</pre>
<pre>createdAt<pre><pre>DateTime<pre><pre>date Follow was created</pre>

Model Text
<pre>objectId<pre><pre>String<pre><pre><pre>unique Text ID</pre>
<pre>authorWho<pre><pre>pointerToUser<pre><pre>Text author</pre>
<pre>createdAt<pre><pre>DateTime<pre><pre>date Text was created</pre>


Network Requests (ONLY 4 actions you can take on objects)</pre>
CRUD<pre><pre><pre>HTTP Verb<pre><pre>Example</pre>
Create<pre><pre><pre>POST<pre><pre><pre>Creating a new post</pre>
Read<pre><pre><pre>GET<pre><pre><pre>Fetching posts for user’s feed</pre>
Update<pre><pre><pre>PUT<pre><pre><pre>Changing a user’s profile image</pre>
Delete<pre><pre><pre>DELETE<pre><pre>Deleting a comment</pre>

Network Requests
-Login Screen
<pre><pre><pre>(Read/GET)<pre><pre><pre>Query Login</pre>
<pre><pre><pre>(Create/POST)<pre>Create User Login</pre>

-Meme Feed
<pre><pre><pre>(Read/GET)<pre><pre><pre>Query post where user is Author</pre>
<pre><pre><pre>(Create/POST)<pre>Create a new like / comment on Post</pre>
<pre><pre><pre>(Delete/DELETE)<pre>Delete existing like / comment</pre>

-Profile
<pre><pre><pre>(Read/GET)<pre><pre><pre>Query logged in user object</pre>
<pre><pre><pre>(Update/PUT)<pre><pre><pre>Update user profile image</pre>

-Generator
<pre><pre><pre>(Read/GET)<pre><pre>Query images</pre>
<pre><pre><pre>(Create/POST)<pre>Create a new Meme</pre>



