package com.house.service;



import com.house.domain.User;


/**
 * 登录的业务层实现
 * @author zhoujiahai
 *
 *xml配置：
 *<bean id="LoginService" class="com.house.service.LoginService">
 *<property name="UserDAO" ref="UserDAO"></property>
 *</bean>
 *
 *用于创建对象的：
 *@Component:
 *作用：就相当于在spring的xml配置文件中写了一个标签。
 *属性：value：用于指定bean的id。如果不写，默认是类名，首字母改小写：loginService
 *   衍生的三个注解：
 *   @Controller:表现层
 *   @Service:业务层
 *   @Repository:持久层
 */


public interface LoginService {
  public User findUser(User user);


}
