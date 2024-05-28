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
public class Blog2 {
    private int id;
    private String title;
    private int author_id;
    private Date created_at;
    private Date update_at;
    private String content;
    private int status;
    private String thumbnail;
    private String briefinfo;

    public Blog2(int id, String title, int author_id, Date created_at, Date update_at, String content, int status, String thumbnail, String briefinfo) {
        this.id = id;
        this.title = title;
        this.author_id = author_id;
        this.created_at = created_at;
        this.update_at = update_at;
        this.content = content;
        this.status = status;
        this.thumbnail = thumbnail;
        this.briefinfo = briefinfo;
    }

    public Blog2() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getAuthor_id() {
        return author_id;
    }

    public void setAuthor_id(int author_id) {
        this.author_id = author_id;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getUpdate_at() {
        return update_at;
    }

    public void setUpdate_at(Date update_at) {
        this.update_at = update_at;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getBriefinfo() {
        return briefinfo;
    }

    public void setBriefinfo(String briefinfo) {
        this.briefinfo = briefinfo;
    }

    @Override
    public String toString() {
        return "Blog2{" + "id=" + id + ", title=" + title + ", author_id=" + author_id + ", created_at=" + created_at + ", update_at=" + update_at + ", content=" + content + ", status=" + status + ", thumbnail=" + thumbnail + ", briefinfo=" + briefinfo + '}';
    }
    
    
}
