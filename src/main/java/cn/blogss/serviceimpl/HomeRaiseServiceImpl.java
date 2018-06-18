package cn.blogss.serviceimpl;/*
 *Created by liqiang on 2018/6/17
 */

import cn.blogss.mapper.HomeRaiseMapper;
import cn.blogss.pojo.Raise;
import cn.blogss.pojo.RaiseCat;
import cn.blogss.service.HomeRaiseService;
import cn.blogss.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;

@Service
public class HomeRaiseServiceImpl implements HomeRaiseService{
    @Autowired
    HomeRaiseMapper raiseMapper;

    @Override
    public int totCount() {
        return raiseMapper.totCount();
    }

    @Override
    public void raiseList(String pageNow,Model model,String cid) {
        int totCount = totCount();
        Page page = null;
        List<Raise> raise = null;

//        如果pageNow为空,默认显示第一页,用户输入大于总页数的值会出现错误,暂时无法控制,避免内存溢出，不首先new一个page对象
        if(pageNow == null || Integer.parseInt(pageNow)<1){
            page = new Page(totCount,1);
        }
         else {
            page = new Page(totCount,Integer.parseInt(pageNow));
        }


        if(cid == null || cid.equals("")){
            raise = raiseMapper.raiseList(page.getStartPos());
        }else {
            raise = raiseMapper.raiseCatList(page.getStartPos(),cid);
        }

        List<RaiseCat> raiseCat = raiseMapper.raiseCat();

        model.addAttribute("page",page);
        model.addAttribute("raise",raise);
        model.addAttribute("raiseCat",raiseCat);

    }

    //    农资详情
    @Override
    public void raiseDetail(int raiseId,Model model) {
        String catName = catName(raiseId);
        Raise raise = raiseMapper.raiseDetail(raiseId);

        model.addAttribute("catName",catName);
        model.addAttribute("raiseDetail",raise);
    }

//    农资类型
    @Override
    public String catName(int raiseId) {
        return raiseMapper.catName(raiseId);
    }

//    农资所有分类
    @Override
    public List<RaiseCat> raiseCat() {
        return raiseMapper.raiseCat();
    }
}
