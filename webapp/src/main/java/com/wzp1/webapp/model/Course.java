package com.wzp1.webapp.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

/**
 * <p>Title: </p>
 *
 * <p>Description: </p>
 *
 * <p>Company: http://wzp1.com</p>
 *
 * @author 吴志平
 * 
 * @since：2015年11月13日 下午2:48:23
 * 
 */
@Entity
@Table
public class Course {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer courseId;
	private String teacherName;
	private String courseName;
	private Date createDate;
	private Date lastUpdateTime;
	/**
	 * 课程内容
	 */
	@Lob
	@Type(type="text")
	private String courseContent;
	private String courseSyllabus;
	private String courseComments;
	/**
	 * 课程缩略图
	 */
	private String courseThumbImgPath;
	/**
	 * 课程图片
	 */
	private String courseImages;
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getLastUpdateTime() {
		return lastUpdateTime;
	}
	public void setLastUpdateTime(Date lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}
	public String getCourseContent() {
		return courseContent;
	}
	public void setCourseContent(String courseContent) {
		this.courseContent = courseContent;
	}
	public String getCourseSyllabus() {
		return courseSyllabus;
	}
	public void setCourseSyllabus(String courseSyllabus) {
		this.courseSyllabus = courseSyllabus;
	}
	public String getCourseComments() {
		return courseComments;
	}
	public void setCourseComments(String courseComments) {
		this.courseComments = courseComments;
	}
	public String getCourseThumbImgPath() {
		return courseThumbImgPath;
	}
	public void setCourseThumbImgPath(String courseThumbImgPath) {
		this.courseThumbImgPath = courseThumbImgPath;
	}
	public String getCourseImages() {
		return courseImages;
	}
	public void setCourseImages(String courseImages) {
		this.courseImages = courseImages;
	}
	public Integer getCourseId() {
		return courseId;
	}
	public void setCourseId(Integer courseId) {
		this.courseId = courseId;
	}
	
}
