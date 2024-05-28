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
public class Subject2 {
    private int id;
    private String name;
    private int creator_id;
    private Date creater_at;
    private Date update_at;
    private int status;
    private String img;
    private String description;
    private String Tag;

    public Subject2() {
    }

    public Subject2(int id, String name, int creator_id, Date creater_at, Date update_at, int status, String img, String description, String Tag) {
        this.id = id;
        this.name = name;
        this.creator_id = creator_id;
        this.creater_at = creater_at;
        this.update_at = update_at;
        this.status = status;
        this.img = img;
        this.description = description;
        this.Tag = Tag;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCreator_id() {
        return creator_id;
    }

    public void setCreator_id(int creator_id) {
        this.creator_id = creator_id;
    }

    public Date getCreater_at() {
        return creater_at;
    }

    public void setCreater_at(Date creater_at) {
        this.creater_at = creater_at;
    }

    public Date getUpdate_at() {
        return update_at;
    }

    public void setUpdate_at(Date update_at) {
        this.update_at = update_at;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTag() {
        return Tag;
    }

    public void setTag(String Tag) {
        this.Tag = Tag;
    }

    @Override
    public String toString() {
        return "Subject2{" + "id=" + id + ", name=" + name + ", creator_id=" + creator_id + ", creater_at=" + creater_at + ", update_at=" + update_at + ", status=" + status + ", img=" + img + ", description=" + description + ", Tag=" + Tag + '}';
    }
    
    
}
