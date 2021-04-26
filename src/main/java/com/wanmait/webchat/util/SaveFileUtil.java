package com.wanmait.webchat.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

public class SaveFileUtil {

    //单一实例获取对象
    private void SaveFileUtil (){}
    private static SaveFileUtil save = new SaveFileUtil();
    public static SaveFileUtil getSave(){
        return save;
    }

    //保存头像到本地
    public String saveProfile(MultipartFile profile, String filepath){
        //获取文件名
        String oldName = profile.getOriginalFilename();
        String nameExt = oldName.substring(oldName.lastIndexOf("."));
        //生成新的拓展名
        String newName = UUID.randomUUID().toString() + nameExt;
        //将文件保存到本地
        File file      = new File(filepath+"/"+newName);
        try {
            profile.transferTo(file);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return newName;
    }





}
