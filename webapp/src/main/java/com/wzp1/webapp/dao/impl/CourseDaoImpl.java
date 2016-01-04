package com.wzp1.webapp.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.wzp1.webapp.dao.CourseDao;
import com.wzp1.webapp.model.Course;

/**
 * <p>
 * Title:
 * </p>
 *
 * <p>
 * Description:
 * </p>
 *
 * <p>
 * Company: http://wzp1.com
 * </p>
 *
 * @author 吴志平
 * 
 * @QQ/TEL 13699193823
 * 
 * @since：2015年11月13日 下午5:03:58
 * 
 */
@Repository
public class CourseDaoImpl implements CourseDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Integer addCourse(Course course) {
		sessionFactory.getCurrentSession().saveOrUpdate(course);
		return 1;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Course> getAllCourses() {
		Query q = sessionFactory.getCurrentSession().createQuery(
				"from Course order by lastUpdateTime desc");
		q.setMaxResults(10);
		List<Course> list = q.list();
		return list;
	}

	public Course getCourseById(Integer courseId) {
		return (Course) sessionFactory.getCurrentSession().createQuery("from Course c where c.courseId="+courseId).uniqueResult();
	}

	@Override
	public void deleteCourseById(Integer courseId){
		Course course = new Course();
		course.setCourseId(courseId);
		sessionFactory.getCurrentSession().delete(course);
	}

}
