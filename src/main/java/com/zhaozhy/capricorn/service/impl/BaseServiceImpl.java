package com.zhaozhy.capricorn.service.impl;

import java.lang.reflect.Field;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.zhaozhy.capricorn.dao.BaseDao;
import com.zhaozhy.capricorn.dao.StudentDao;
import com.zhaozhy.capricorn.service.BaseService;
import com.zhaozhy.capricorn.util.GenericsUtils;

public class BaseServiceImpl<T> implements BaseService<T> {
	private static final Log log=LogFactory.getLog(BaseServiceImpl.class);
	private Class clazz; // clazz中存储了子类当前操作实体类型
	protected BaseDao baseDao;
	
	protected StudentDao studentDao;
	
	public BaseServiceImpl() {
		// 如果子类调用当前构造方法,this代表的是子类对象
		log.info(this);
		log.info("获取父类信息:" + this.getClass().getSuperclass());
		log.info("获取父类信息包括泛型信息:"
				+ this.getClass().getGenericSuperclass());
//		ParameterizedType type = (ParameterizedType) this.getClass().getGenericSuperclass();
//		clazz = (Class) type.getActualTypeArguments()[0];
		clazz=GenericsUtils.getSuperClassGenricType(this.getClass());
		log.info("service clazz:" + clazz);
		// 此处 dao还有没有实例化, 不能实现给baseDao的赋值操作
//		System.out.println("baseDao:" + baseDao);
//		System.out.println("categoryDao:" + categoryDao);
	}
	
	public void init() throws Exception{
		// 1: 根据具体的泛型, 获取相应的Field字段, categoryDao
				String clazzName=clazz.getSimpleName();
				String clazzDaoName=clazzName.substring(0,1).toLowerCase() + clazzName.substring(1) + "Dao";
				Field clazzField=this.getClass().getSuperclass().getDeclaredField(clazzDaoName);
				// 2: 获取baseDao Filed字段
				Field baseField=this.getClass().getSuperclass().getDeclaredField("baseDao");
				// 3: 把categoryDao的值赋值给baseDao
				baseField.set(this,clazzField.get(this));
				log.info("baseDao:" + baseDao);
	}
	
	public void delete(String id) {
		this.baseDao.delete(id);
	}

	public T get(String id) {
		return (T)this.baseDao.get(id);
	}

	public List<T> query() {
		return this.baseDao.query();
	}

	public void save(T t) {
		this.baseDao.save(t);
	}

	public void update(T t) {
		this.baseDao.update(t);
	}

	public void delete(T t) {
		this.baseDao.delete(t);
	}

	public void deleteAll() {
		this.baseDao.deleteAll();
	}

	public List<T> findAll() {
		return this.baseDao.findAll();
	}

	public List<T> findByExample(T t) {
		return this.baseDao.findByExample(t);
	}

	public List findByProperty(String propertyName, Object value) {
		return this.baseDao.findByProperty(propertyName, value);
	}

	public StudentDao getStudentDao() {
		return studentDao;
	}

	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

}
