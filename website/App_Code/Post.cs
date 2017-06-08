using System;
using System.Collections.Generic;

[Serializable]
public class Post
{
    public string ImageName { get; set; }
    public string Comment { get; set; }

    public Post(string imageName, string comment)
    {
        this.ImageName = imageName;
        this.Comment = comment;
    }

}