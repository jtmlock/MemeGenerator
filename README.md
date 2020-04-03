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

	Property		Type			Description
Model	User
	objectId		String			unique User ID
	createdAt		DateTime		date when login was created (default)
	UpdatedAt		DateTime		date password was changed

Model	Post *(duplicate for Storage vs Post??)
	objectId		String			Unique ID for the User post (default)
	Author			pointerToUser		image Author
	Image			File			image that user posts
	Caption			String			meme caption by author
	Comment Count		Number		number of comments that have been posted
	Likes Count		Number		number of likes that have been posted
	createdAt		DateTime		date when post was created 
	UpdatedAt		DateTime		date when meme was last updated

Model Comment
	objectId		String			unique ID for the comment
	Author			pointer to User	comment Author
	createdAt		DateTime		date when the comment was created
	UpdatedAt		DateTime		date if/when the comment was updated

Model Likes
	objectId		String			unique Like ID
	authorWho		pointerToUser		Like author
	createdAt		DateTime		date Like was created

Model Follow
	objectId		String			unique Follow ID
	authorWho		pointerToUser		Follow author
	createdAt		DateTime		date Follow was created

Model Text
	objectId		String			unique Text ID
	authorWho		pointerToUser		Text author
	createdAt		DateTime		date Text was created


Network Requests (ONLY 4 actions you can take on objects)
CRUD			HTTP Verb		Example
Create			POST			Creating a new post
Read			GET			Fetching posts for user’s feed
Update			PUT			Changing a user’s profile image
Delete			DELETE		Deleting a comment

Network Requests
-Login Screen
			(Read/GET) 		Query Login
			(Create/POST)	Create User Login

-Meme Feed
			(Read/GET) 		Query post where user is Author
			(Create/POST)	Create a new like / comment on Post
			(Delete/DELETE)	Delete existing like / comment

-Profile
			(Read/GET) 		Query logged in user object
			(Update/PUT)		Update user profile image

-Generator
			(Read/GET)		Query images
			(Create/POST)	Create a new Meme



