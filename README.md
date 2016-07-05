# NodeBlog

***< Under Construction >***

A blogging engine built on:

- nodejs REST API
- Azure Storage Account (Blob and Table)
- AngularJS 2.0 web front end


## REST API

The REST API offers the following endpoints:

### List all blog posts

```
GET /blog/posts
```

### Retrieve a single blog post

```
GET /blog/posts/{id}
```

### Add a new blog post

```
POST /blog/posts

{
	"Title": "{Title}",
	"Content": "{Content}",
	"Author": "{Author}",
	"Tags": [
		"{Tag1}",
		"{Tag2}",
		"{Tag3}"
	]
}
```

### Update an existing blog post

```
PUT /blog/posts/{id}

{
	"Title": "{Title}",
	"Content": "{Content}",
	"Author": "{Author}",
	"Tags": [
		"{Tag1}",
		"{Tag2}",
		"{Tag3}"
	]
}
```

### Delete an existing blog post

```
DELETE /blog/posts/{id}
```

### Retrieve all comments for a blog post

```
GET /blog/posts/{id}/comments
```

### Add a new comment to an existing blog post

```
POST /blog/posts/{id}/comments

{
	"Content": "{Content}",
	"Author": "{Author}",
	"PostId": "{PostId}
}
```

## Storage

The blogging engine has the following data model:

![Blog Data Model](BlogDataModel.png)

### Post (Table Storage)

The blog post details, including the content.

| Field  | Description |
| ------ | ----------- |
| PostId | Unique identifier of the blog post |
| Title  | The title of the blog post |
| PostedOn | The date and time the blog post was created |
| Content | The content of the blog post |
| Author  | The author of the blog post |

### PostTags (Table Storage)

The tags associated with the blog post details.

| Field  | Description |
| ------ | ----------- |
| PostId | Unique identifier of the blog post |
| Tag    | A tag of the blog post |

### PostResources (Blob Storage)

Any binary content attached to a blog post, such as an image.

| Field  | Description |
| ------ | ----------- |
| PostId | Unique identifier of the blog post |
| Content | The binary content of any resources for the blog post |

### PostComments (Table Storage)

A comment for a blog post.

| Field  | Description |
| ------ | ----------- |
| CommentId | Unique identifier of the comment |
| Content | The content of the comment |
| PostedOn | The date and time the comment was created |
| Author  | The author of the comment |
| PostId | Unique identifier of the blog post the comment relates to |

## AngularJS Web Site

The AngularJS web site uses the REST API to allow an author to create and update blog posts.

The web site also offers a read only view of the blog posts as well as offering the reader a chance to comment of the blog post.
