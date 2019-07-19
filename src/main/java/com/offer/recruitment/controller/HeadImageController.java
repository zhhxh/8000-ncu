package com.offer.recruitment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

/**
 * @author Kyrie Lee
 * @date 2019/7/15 14:05
 */
@Controller
public class HeadImageController {
    @RequestMapping("/pic")
    @ResponseBody
    public void getHeadImg(HttpServletRequest request, HttpServletResponse response, String img) throws IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("image/*");
        String path = request.getServletContext().getRealPath("/WEB-INF/upload/");
        OutputStream out = response.getOutputStream();
        InputStream in = null;

        if (img == null || "".equals(img)) {
            in = new FileInputStream(new File(path, "default.jpg"));
        } else {
            in = new FileInputStream(new File(path + File.separator + img));
        }

        byte[] buff = new byte[in.available()];
        in.read(buff);
        out.write(buff);
        out.flush();
        out.close();
        in.close();
    }
}
