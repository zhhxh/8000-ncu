package com.offer.recruitment.controller;

import com.offer.recruitment.pojo.WordBean;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/word")
public class WordController {
    private Configuration configuration = null;

    public WordController() {
        configuration = new Configuration();
        configuration.setDefaultEncoding("utf-8");
    }

    @RequestMapping("/download")
    public String createDoc(HttpServletRequest request, String show_name,
                            String show_email, String show_phone,
                            String show_age, String show_address,
                            String show_xueLi, String show_school,
                            String show_professional, String show_description) throws IOException {

        // 要填入模本的数据文件
        Map dataMap = new HashMap();
        //getData(dataMap);
        dataMap.put("show_name", show_name);
        dataMap.put("show_email", show_email);
        dataMap.put("show_phone", show_phone);
        dataMap.put("show_age", show_age);
        dataMap.put("show_address", show_address);
        dataMap.put("show_xueLi", show_xueLi);
        dataMap.put("show_school", show_school);
        dataMap.put("show_professional", show_professional);
        dataMap.put("show_description", show_description);
        // 设置模本装置方法和路径,FreeMarker支持多种模板装载方法。可以重servlet，classpath，数据库装载，
        // ftl文件存放路径
        //String path = getClass().getResource("/").toString();
        configuration.setClassForTemplateLoading(this.getClass(), "../");

        Template t = null;
        try {
            // test.ftl为要装载的模板
            t = configuration.getTemplate("QQ.ftl");
            t.setEncoding("utf-8");
        } catch (IOException e) {
            e.printStackTrace();
        }

        // 输出文档路径及名称
        File outFile = new File("E:/test.doc");
        Writer out = null;
        if (!outFile.exists()) {
            outFile.createNewFile();
        }
        try {
            out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFile), "utf-8"));
        } catch (Exception e1) {
            e1.printStackTrace();
        }

        try {
            t.process(dataMap, out);
            out.close();
        } catch (TemplateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "user/memberResume";
    }

    /**
     * 注意dataMap里存放的数据Key值要与模板中的参数相对应
     *
     * @param dataMap
     */
    private void getData(Map dataMap) {
        dataMap.put("title", "Test");
        dataMap.put("nian", "二零一二");
        dataMap.put("danweiming", "陕西");
        List lists = new ArrayList();

        WordBean w1 = new WordBean();
        w1.setPaixu("1");
        w1.setBiaoduan("标段一");
        WordBean w2 = new WordBean();
        w2.setPaixu("2");
        w2.setBiaoduan("标段二");

        lists.add(w1);
        lists.add(w2);

        dataMap.put("wordBeans", lists);

        dataMap.put("paiming", "1");

        dataMap.put("biaoduan", "标段一");

    }

}
