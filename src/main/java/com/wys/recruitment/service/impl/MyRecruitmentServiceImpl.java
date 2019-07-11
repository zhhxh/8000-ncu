package com.wys.recruitment.service.impl;

import com.wys.recruitment.exception.NullDataException;
import com.wys.recruitment.mapper.CompanyMapper;
import com.wys.recruitment.mapper.MyrecruitmentMapper;
import com.wys.recruitment.pojo.Company;
import com.wys.recruitment.pojo.MoreCondition;
import com.wys.recruitment.pojo.Myrecruitment;
import com.wys.recruitment.pojo.User;
import com.wys.recruitment.service.IMyRecruitmentService;
import com.wys.recruitment.utils.UuidUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class MyRecruitmentServiceImpl implements IMyRecruitmentService {
    @Autowired
    public MyrecruitmentMapper myrecruitmentMapper;
    @Autowired
    private CompanyMapper companyMapper;

    public boolean save(Myrecruitment myrecruitment, User user) throws NullDataException {
        boolean flag = false;
        Company company = companyMapper.findByUid(user.getId(), "2");
        if (company != null) {
            if (company.getReleasednumber() - 1 >= 0) {
                company.setReleasednumber(company.getReleasednumber() - 1);
                companyMapper.updateByPrimaryKey(company);

                myrecruitment.setCid(company.getId());
                myrecruitment.setCompanyname(company.getCompanyname());
                myrecruitment.setId(UuidUtils.getUUID("zhaopin", 20));
                myrecruitment.setPublictime(new Date());
                myrecruitment.setPosition("1");

                int i = myrecruitmentMapper.insert(myrecruitment);
                if (i > 0) {
                    flag = true;
                }

            }
        }
        return flag;
    }

    /**
     * 修改 当前招聘信息的方法
     */
    @Override
    public boolean updateById(Myrecruitment myrecruitment) {
        Myrecruitment m2 = myrecruitmentMapper.selectByPrimaryKey(myrecruitment.getId());

        //修改的十几个字段重新set进去
        m2.setAddress(myrecruitment.getAddress());
        m2.setAttract(myrecruitment.getAttract());
        m2.setJobduty(myrecruitment.getJobduty());
        m2.setJobkey(myrecruitment.getJobkey());
        m2.setJobname(myrecruitment.getJobname());
        m2.setJobrequired(myrecruitment.getJobrequired());
        m2.setMaxwage(myrecruitment.getMaxwage());
        m2.setMinwage(myrecruitment.getMinwage());
        m2.setNumber(myrecruitment.getNumber());
        m2.setRemark(myrecruitment.getRemark());
        m2.setType(myrecruitment.getType());
        m2.setWorkexperience(myrecruitment.getWorkexperience());
        m2.setWorknature(myrecruitment.getWorknature());
        m2.setXueli(myrecruitment.getXueli());
        int i = myrecruitmentMapper.updateByPrimaryKey(m2);
        if (i > 0) {
            return true;
        } else {
            return false;
        }

    }

    @Override
    public List<Myrecruitment> selectAllByCid(User user) {
        //1.0 根据当前用户的id去查找出对应公司的id
        Company company = companyMapper.findByUid(user.getId(), "2");
        if (company != null) {
            int cid = company.getId();
            //根据当前的cid去mycruitment招聘表里面查找数据
            return myrecruitmentMapper.selectAllByCid(cid, "1");
        } else {
            //TODO 说明该用户还没有绑定到了自己的公司，这是属于异常的情况，暂时返回null
            return null;
        }

    }

    @Override
    public int deleteByPrimaryKey(String id) {
        // TODO Auto-generated method stub
        Myrecruitment m = myrecruitmentMapper.selectByPrimaryKey(id);
        m.setPosition("2");
        return myrecruitmentMapper.updateByPrimaryKey(m);
    }

    /**
     * 根据id查找对应的招聘信息
     */
    @Override
    public Myrecruitment selectById(String id) {
        return myrecruitmentMapper.selectByPrimaryKey(id);
    }

    /**
     * 查找出当前最近发布的社招招聘信息
     */
    @Override
    public List<Map<String, Object>> selectLatest(String type) {
        return myrecruitmentMapper.selectLatest(type);
    }

    /**
     * 根据公司的id查询出当前公司的所有职位信息
     */
    @Override
    public List<Myrecruitment> selectByCid(int id) {
        // TODO Auto-generated method stub
        return myrecruitmentMapper.selectAllByCid(id, "1");
    }

    @Override
    public List<Map<String, Object>> selectByMoreCondition(MoreCondition moreCondition) {
        // TODO Auto-generated method stub
        return myrecruitmentMapper.selectByMoreCondition(moreCondition);
    }

    public int countNumber(MoreCondition moreCondition) {
        // TODO Auto-generated method stub
        return myrecruitmentMapper.countNumber(moreCondition);
    }

    @Override
    public List<Map<String, Object>> findJobnameByUid(Integer id) {
        Map<String, Object> map = new HashMap<String, Object>();
        // TODO Auto-generated method stub
        map.put("uid", id);
        map.put("position", "1");
        return myrecruitmentMapper.findJobnameByUid(map);
    }


}
