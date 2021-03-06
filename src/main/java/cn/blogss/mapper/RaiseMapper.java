package cn.blogss.mapper;

import cn.blogss.pojo.Raise;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface RaiseMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table raise
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table raise
     *
     * @mbggenerated
     */
    int insert(Raise record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table raise
     *
     * @mbggenerated
     */
    int insertSelective(Raise record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table raise
     *
     * @mbggenerated
     */
    Raise selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table raise
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(Raise record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table raise
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Raise record);

    public abstract List<Raise> selectRaiseByPage(@Param("pageIndex")int pageIndex,
                                                  @Param("pageSize")int pageSize,
                                                  @Param("raise")Raise raise);

    public abstract List<Raise> initRecommended();

    //农资批量删除
    public abstract void delBatch(String[] ids);

    public int totRecord(Raise raiseCat);

    /*秒杀，减少库存*/
    public int reduceAmount(@Param("id") int id,
                            @Param(("amount")) int amount,
                            @Param("killTime") Date killTime);
}