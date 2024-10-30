package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 发货表
 *
 * @author 
 * @email
 * @date 2021-02-22
 */
@TableName("fahuoxinxi")
public class FahuoxinxiEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public FahuoxinxiEntity() {

	}

	public FahuoxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")
    private Integer id;


    /**
     * 物流单号
     */
    @TableField(value = "logistics")
    private String logistics;


    /**
     * 快递名称 Search
     */
    @TableField(value = "name")
    private String name;


    /**
     * 快递类型 Search
     */
    @TableField(value = "kd_types")
    private Integer kdTypes;

    /**
     * 快递类型 Search
     */
    @TableField(value = "yhid")
    private Integer yhid;



    /**
     * 发件人
     */
    @TableField(value = "addresser")
    private String addresser;


    /**
     * 手机号
     */
    @TableField(value = "amobile")
    private String amobile;


    /**
     * 收件地址
     */
    @TableField(value = "consigneeaddress")
    private String consigneeaddress;


    /**
     * 收件人
     */
    @TableField(value = "recipients")
    private String recipients;


    /**
     * 手机号
     */
    @TableField(value = "rmobile")
    private String rmobile;


    /**
     * 发货时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "shipments_time")
    private Date shipmentsTime;

    /**
     * 发货时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "update_time")
    private Date updateTime;

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * 描述信息
     */
    @TableField(value = "notice_content")
    private String noticeContent;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：物流单号
	 */
    public String getLogistics() {
        return logistics;
    }

    public Integer getYhid() {
        return yhid;
    }

    public void setYhid(Integer yhid) {
        this.yhid = yhid;
    }

    /**
	 * 获取：物流单号
	 */

    public void setLogistics(String logistics) {
        this.logistics = logistics;
    }
    /**
	 * 设置：快递名称 Search
	 */
    public String getName() {
        return name;
    }


    /**
	 * 获取：快递名称 Search
	 */

    public void setName(String name) {
        this.name = name;
    }
    /**
	 * 设置：快递类型 Search
	 */
    public Integer getKdTypes() {
        return kdTypes;
    }


    /**
	 * 获取：快递类型 Search
	 */

    public void setKdTypes(Integer kdTypes) {
        this.kdTypes = kdTypes;
    }
    /**
	 * 设置：发件人
	 */
    public String getAddresser() {
        return addresser;
    }


    /**
	 * 获取：发件人
	 */

    public void setAddresser(String addresser) {
        this.addresser = addresser;
    }
    /**
	 * 设置：手机号
	 */
    public String getAmobile() {
        return amobile;
    }


    /**
	 * 获取：手机号
	 */

    public void setAmobile(String amobile) {
        this.amobile = amobile;
    }
    /**
	 * 设置：收件地址
	 */
    public String getConsigneeaddress() {
        return consigneeaddress;
    }


    /**
	 * 获取：收件地址
	 */

    public void setConsigneeaddress(String consigneeaddress) {
        this.consigneeaddress = consigneeaddress;
    }
    /**
	 * 设置：收件人
	 */
    public String getRecipients() {
        return recipients;
    }


    /**
	 * 获取：收件人
	 */

    public void setRecipients(String recipients) {
        this.recipients = recipients;
    }
    /**
	 * 设置：手机号
	 */
    public String getRmobile() {
        return rmobile;
    }


    /**
	 * 获取：手机号
	 */

    public void setRmobile(String rmobile) {
        this.rmobile = rmobile;
    }
    /**
	 * 设置：发货时间
	 */
    public Date getShipmentsTime() {
        return shipmentsTime;
    }


    /**
	 * 获取：发货时间
	 */

    public void setShipmentsTime(Date shipmentsTime) {
        this.shipmentsTime = shipmentsTime;
    }
    /**
	 * 设置：描述信息
	 */
    public String getNoticeContent() {
        return noticeContent;
    }


    /**
	 * 获取：描述信息
	 */

    public void setNoticeContent(String noticeContent) {
        this.noticeContent = noticeContent;
    }

}
