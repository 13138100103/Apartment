package com.house.service;



import com.house.domain.User;


/**
 * ��¼��ҵ���ʵ��
 * @author zhoujiahai
 *
 *xml���ã�
 *<bean id="LoginService" class="com.house.service.LoginService">
 *<property name="UserDAO" ref="UserDAO"></property>
 *</bean>
 *
 *���ڴ�������ģ�
 *@Component:
 *���ã����൱����spring��xml�����ļ���д��һ����ǩ��
 *���ԣ�value������ָ��bean��id�������д��Ĭ��������������ĸ��Сд��loginService
 *   ����������ע�⣺
 *   @Controller:���ֲ�
 *   @Service:ҵ���
 *   @Repository:�־ò�
 */


public interface LoginService {
  public User findUser(User user);


}
