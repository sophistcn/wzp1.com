package com.wzp1.webapp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wzp1.webapp.dao.CourseDao;
import com.wzp1.webapp.model.Course;
import com.wzp1.webapp.service.CourseService;

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
 * @since：2015年11月13日 下午5:01:44
 * 
 */
@Service
public class CourseServiceImpl implements CourseService {
	@Autowired
	private CourseDao courseDao;
	
	public Integer addCourse(Course course) {
		courseDao.addCourse(course);
		return null;
	}

	public CourseDao getCourseDao() {
		return courseDao;
	}

	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}

	public List<Course> getAllCourses() {
		return courseDao.getAllCourses();
	}

	public Course getCourseById(Integer courseId) {
		return courseDao.getCourseById(courseId);
	}

	@Override
	public void deleteCourseById(Integer courseId) {
		courseDao.deleteCourseById(courseId);
	}

}
