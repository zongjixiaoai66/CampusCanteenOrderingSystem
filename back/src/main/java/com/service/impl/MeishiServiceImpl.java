package com.service.impl;

import com.utils.StringUtil;
import com.service.DictionaryService;
import com.utils.ClazzDiff;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.lang.reflect.Field;
import java.util.*;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.transaction.annotation.Transactional;
import com.utils.PageUtils;
import com.utils.Query;
import org.springframework.web.context.ContextLoader;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import org.springframework.lang.Nullable;
import org.springframework.util.Assert;
import com.dao.MeishiDao;
import com.entity.MeishiEntity;
import com.service.MeishiService;
import com.entity.view.MeishiView;

/**
 * 美食 服务实现类
 */
@Service("meishiService")
@Transactional
public class MeishiServiceImpl extends ServiceImpl<MeishiDao, MeishiEntity> implements MeishiService {

    @Override
    public PageUtils queryPage(Map<String,Object> params) {
        Page<MeishiView> page =new Query<MeishiView>(params).getPage();
        page.setRecords(baseMapper.selectListView(page,params));
        return new PageUtils(page);
    }


}
