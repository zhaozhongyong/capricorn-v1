package com.zhaozhy.capricorn.dao;

import java.util.List;

public interface BaseDao<T> {

	public void save(T t);

	public void update(T t);

	public void delete(String id);
	
	public void delete(T t);
	// 仅仅查询当前对象, 不支持级联查询
	public List<T> query();

	public T get(String id);
	public List<T> findByExample(T t);
	public List<T> findAll();
	public List findByProperty(String propertyName, Object value);
	/**
	 * 
	 * @CreateDate	2017-6-30  下午02:39:21
	 * @Author				zhaozhy  (zhongyong@qq.com)
	 *	@Desc					清空表
	 */
	public void deleteAll();
}
