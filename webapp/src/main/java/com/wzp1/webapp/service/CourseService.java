package com.wzp1.webapp.service;

import java.util.List;

import com.wzp1.webapp.model.Course;

/**
 * <p>Title: </p>
 *
 * <p>Description: </p>
 *
 * <p>Company: http://wzp1.com</p>
 *
 * @author 吴志平
 * 
 * @QQ/TEL 13699193823
 * 
 * @since：2015年11月13日 下午5:00:52
 * 
 */
public interface CourseService {
	public Integer addCourse(Course course) ;

	public List<Course> getAllCourses();

	public Course getCourseById(Integer courseId);

	public void deleteCourseById(Integer courseId);
}
