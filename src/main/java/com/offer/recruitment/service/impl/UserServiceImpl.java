package com.offer.recruitment.service.impl;

import com.offer.recruitment.mapper.UserMapper;
import com.offer.recruitment.pojo.User;
import com.offer.recruitment.pojo.query.UserCondition;
import com.offer.recruitment.service.IUserService;
import com.offer.recruitment.utils.MailUtils11;
import com.offer.recruitment.utils.MyMd5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional
public class UserServiceImpl implements IUserService {
    @Autowired
    private UserMapper userMapper;

    /**
     * 插入一条数据
     */
    @Override
    public int insertUser(User user) {
        return userMapper.insert(user);
    }

    /**
     * 根据邮箱查找
     */
    @Override
    public User selectUserByUsername(String username) {
        // TODO Auto-generated method stub
        return userMapper.selectUserByUsername(username);
    }

    /**
     * 根据邮箱+密码来查询数据库
     */
    @Override
    public User selectUserByUsernameAndPassword(String username, String password) {
        User user = userMapper.selectUserByUsernameAndPassword(username, password);
        System.out.println(user);
        return user;
    }

    /**
     * 关联用户的qq
     *
     * @param user
     */
    public int updateAssociatedQq(User user) {
        //根据id查找出当前的对象
        User u = userMapper.selectByPrimaryKey(user.getId());
        u.setQq(user.getQq());
        return userMapper.updateByPrimaryKey(u);

    }

    /**
     * 根据id查找当前用户信息
     *
     * @param userId
     * @return
     */
    public User selectByUserId(int userId) {
        return userMapper.selectByPrimaryKey(userId);
    }

    public int updateAssociatedWeixin(User user) {
        //根据id查找出当前的对象
        User u = userMapper.selectByPrimaryKey(user.getId());
        u.setWeixin(user.getWeixin());
        return userMapper.updateByPrimaryKey(u);

    }

    /**
     * 修改用户密码
     *
     * @param user
     */
    public int updatePassword(User user) {
        //根据id查找出当前的对象
        User u = userMapper.selectByPrimaryKey(user.getId());

        String baseString = MyMd5Utils.encodeByMD5(u.getUsername() + "-" + user.getPassword());

        u.setPassword(baseString);

        return userMapper.updateByPrimaryKey(u);

    }

    public List<Map<String, Object>> listAllByCondition(UserCondition userCondition) {
        // TODO Auto-generated method stub
        return userMapper.listAllByCondition(userCondition);
    }

    @Override
    public int chongzhi(Integer id) throws Exception {
        // TODO Auto-generated method stub
        User user = userMapper.selectByPrimaryKey(id);
        String baseString = MyMd5Utils.encodeByMD5(user.getUsername() + "-" + "123456");
        user.setPassword(baseString);
        //发送邮件告诉对方
        MailUtils11.sendMail("招聘系统提醒", user.getUsername(), "密码重置通知", "尊敬的用户，您的密码已经重置为'123456',为了您的安全，建议登录到官网网站修改个人密码。https://hongbin.albbkongbao.com/recruitmentWebsite/system/index");

        return userMapper.updateByPrimaryKey(user);
    }

    @Override
    public int tingyong(Integer id, int i) {
        // TODO Auto-generated method stub
        return userMapper.tingyong(id, i);
    }

    public void updateByBaseString(String baseString) {
        userMapper.updateByBaseString(1, baseString);

    }

}
