package com.wzp1.webapp.action;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wzp1.webapp.constants.WebappConstants;
import com.wzp1.webapp.model.Course;
import com.wzp1.webapp.service.CourseService;

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
 * @since：2015年11月13日 下午4:41:11
 * 
 */
@Controller
public class CourseController {
	@Autowired
	private CourseService courseService;

	@RequestMapping("/course/addCourse")
	@ResponseBody
	public String addCourse(Course course, HttpSession session, Model model,
			HttpServletRequest request) throws UnsupportedEncodingException {
		if(course.getCourseId()!=null){
		 Course oldCourse=	courseService.getCourseById(course.getCourseId());
		 course.setCreateDate(oldCourse.getCreateDate());
		}else{
			course.setCreateDate(new Date());
		}
		course.setTeacherName((String) session
				.getAttribute(WebappConstants.SESSION_MEMBER));
		course.setLastUpdateTime(new Date());
		courseService.addCourse(course);

		return "success";
	}

	public CourseService getCourseService() {
		return courseService;
	}

	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}

	@RequestMapping("/viewCourses")
	public String viewCourses(Model model) {
		List<Course> list = courseService.getAllCourses();
		model.addAttribute("courses", list);
		return "courseList";
	}
	
	@RequestMapping("/display/Course")
	public String displayCourse(@RequestParam Integer id, Model model) {
		return "courseDisplay";
	}
	
	@RequestMapping("/course/initAddCourse")
	public String addCourse(@RequestParam Integer courseId, Model model){
		if(courseId>0){
			Course course = courseService.getCourseById(courseId);
			model.addAttribute(WebappConstants.COURSE, course);
		}
		return "addCourse";
	}
	
	@RequestMapping("/course/deleteCourse")
	public String deleteCourse(@RequestParam Integer courseId,Model model){
		courseService.deleteCourseById(courseId);
		List<Course> list = courseService.getAllCourses();
		model.addAttribute("courses", list);
		return "courseList";
	}
}
