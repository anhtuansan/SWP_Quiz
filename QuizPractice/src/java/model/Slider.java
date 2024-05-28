/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.sql.Date;
/**
 *
 * @author Admin
 */
public class Slider {
    private int ID;
    private String Title;
    private String SubTitle;
    private String Content;
    private String Image;
    private String LinkUrl;
    private Date CreatedAt;
    private int CreatedBy;
    private int Status;

    public Slider() {
    }

    public Slider(int ID, String Title, String SubTitle, String Content, String Image, String LinkUrl, Date CreatedAt, int CreatedBy, int Status) {
        this.ID = ID;
        this.Title = Title;
        this.SubTitle = SubTitle;
        this.Content = Content;
        this.Image = Image;
        this.LinkUrl = LinkUrl;
        this.CreatedAt = CreatedAt;
        this.CreatedBy = CreatedBy;
        this.Status = Status;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public String getSubTitle() {
        return SubTitle;
    }

    public void setSubTitle(String SubTitle) {
        this.SubTitle = SubTitle;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String Content) {
        this.Content = Content;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    public String getLinkUrl() {
        return LinkUrl;
    }

    public void setLinkUrl(String LinkUrl) {
        this.LinkUrl = LinkUrl;
    }

    public Date getCreatedAt() {
        return CreatedAt;
    }

    public void setCreatedAt(Date CreatedAt) {
        this.CreatedAt = CreatedAt;
    }

    public int getCreatedBy() {
        return CreatedBy;
    }

    public void setCreatedBy(int CreatedBy) {
        this.CreatedBy = CreatedBy;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }

    @Override
    public String toString() {
        return "Slider{" + "ID=" + ID + ", Title=" + Title + ", SubTitle=" + SubTitle + ", Content=" + Content + ", Image=" + Image + ", LinkUrl=" + LinkUrl + ", CreatedAt=" + CreatedAt + ", CreatedBy=" + CreatedBy + ", Status=" + Status + '}';
    }
    
    
}
