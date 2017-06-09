using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    private List<Post> savedPosts;
    private List<Post> posts;
    private List<string> images;

    protected void Page_Load(object sender, EventArgs e)
    {
        posts = new List<Post>();
        savedPosts = loadSavedPosts();

        string[] images = Directory.GetFiles(Server.MapPath("~/Images"));

        foreach (string image in images)
        {
            string imageName = System.IO.Path.GetFileName(image);

            foreach (Post saved in savedPosts)
                if (saved.ImageName.Equals(String.Format("~/Images/{0}", imageName)))
                    posts.Add(saved);
        }

        RepeaterImages.DataSource = posts;
        RepeaterImages.DataBind();
    }

    private List<Post> loadSavedPosts()
    {
        return FileManager.ReadFromBinaryFile<List<Post>>(Server.MapPath("~/Posts/Posts.txt"));
    }

    protected void Upload_Click(object sender, EventArgs e)
    {
        if (!FileUpload1.HasFile)
            return;

        saveImage(FileUpload1.FileName);

        savePost(FileUpload1.FileName);

        Post_Text.Text = "";

        Page_Load(sender, e);
    }

    protected void Delete_Click(object sender, EventArgs e)
    {
        string imageToDelete = ((Button)sender).CommandArgument;

        DeletePost(imageToDelete);

        Page_Load(sender, e);
    }

    private void DeletePost(string imageToDelete)
    {
        foreach (Post post in posts)
        {
            if (post.ImageName == imageToDelete)
            {
                posts.Remove(post);
                break;
            }
        }
        FileManager.WriteToBinaryFile(Server.MapPath("~/Posts/Posts.txt"), posts);
    }

    private void saveImage(string fileName)
    {
        FileUpload1.SaveAs(Server.MapPath("Images//" + fileName));
    }

    private void savePost(string fileName)
    {
        string comment = Post_Text.Text;
        posts.Add(new Post(String.Format("~/Images/{0}", fileName), comment));

        FileManager.WriteToBinaryFile(Server.MapPath("~/Posts/Posts.txt"), posts);
    }

}