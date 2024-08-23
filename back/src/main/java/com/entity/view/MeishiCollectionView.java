package com.entity.view;

import org.apache.tools.ant.util.DateUtils;
import com.annotation.ColumnInfo;
import com.entity.MeishiCollectionEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;
import com.utils.DateUtil;

/**
* 美食收藏
* 后端返回视图实体辅助类
* （通常后端关联的表或者自定义的字段需要返回使用）
*/
@TableName("meishi_collection")
public class MeishiCollectionView extends MeishiCollectionEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	//当前表
	/**
	* 类型的值
	*/
	@ColumnInfo(comment="类型的字典表值",type="varchar(200)")
	private String meishiCollectionValue;

	//级联表 美食
		/**
		* 美食编号
		*/

		@ColumnInfo(comment="美食编号",type="varchar(200)")
		private String meishiUuidNumber;
		/**
		* 美食名称
		*/

		@ColumnInfo(comment="美食名称",type="varchar(200)")
		private String meishiName;
					 
		/**
		* 美食 的 商家
		*/
		@ColumnInfo(comment="商家",type="int(11)")
		private Integer meishiShangjiaId;
		/**
		* 美食照片
		*/

		@ColumnInfo(comment="美食照片",type="varchar(200)")
		private String meishiPhoto;
		/**
		* 美食类型
		*/
		@ColumnInfo(comment="美食类型",type="int(11)")
		private Integer meishiTypes;
			/**
			* 美食类型的值
			*/
			@ColumnInfo(comment="美食类型的字典表值",type="varchar(200)")
			private String meishiValue;
		/**
		* 美食库存
		*/

		@ColumnInfo(comment="美食库存",type="int(11)")
		private Integer meishiKucunNumber;
		/**
		* 美食原价
		*/
		@ColumnInfo(comment="美食原价",type="decimal(10,2)")
		private Double meishiOldMoney;
		/**
		* 现价
		*/
		@ColumnInfo(comment="现价",type="decimal(10,2)")
		private Double meishiNewMoney;
		/**
		* 美食热度
		*/

		@ColumnInfo(comment="美食热度",type="int(11)")
		private Integer meishiClicknum;
		/**
		* 美食介绍
		*/

		@ColumnInfo(comment="美食介绍",type="longtext")
		private String meishiContent;
		/**
		* 是否上架
		*/
		@ColumnInfo(comment="是否上架",type="int(11)")
		private Integer shangxiaTypes;
			/**
			* 是否上架的值
			*/
			@ColumnInfo(comment="是否上架的字典表值",type="varchar(200)")
			private String shangxiaValue;
		/**
		* 逻辑删除
		*/

		@ColumnInfo(comment="逻辑删除",type="int(11)")
		private Integer meishiDelete;
	//级联表 用户
		/**
		* 用户姓名
		*/

		@ColumnInfo(comment="用户姓名",type="varchar(200)")
		private String yonghuName;
		/**
		* 联系方式
		*/

		@ColumnInfo(comment="联系方式",type="varchar(200)")
		private String yonghuPhone;
		/**
		* 身份证号
		*/

		@ColumnInfo(comment="身份证号",type="varchar(200)")
		private String yonghuIdNumber;
		/**
		* 用户头像
		*/

		@ColumnInfo(comment="用户头像",type="varchar(200)")
		private String yonghuPhoto;
		/**
		* 电子邮箱
		*/

		@ColumnInfo(comment="电子邮箱",type="varchar(200)")
		private String yonghuEmail;
		/**
		* 余额
		*/
		@ColumnInfo(comment="余额",type="decimal(10,2)")
		private Double newMoney;
		/**
		* 账号状态
		*/
		@ColumnInfo(comment="账号状态",type="int(11)")
		private Integer statusTypes;
			/**
			* 账号状态的值
			*/
			@ColumnInfo(comment="账号状态的字典表值",type="varchar(200)")
			private String statusValue;



	public MeishiCollectionView() {

	}

	public MeishiCollectionView(MeishiCollectionEntity meishiCollectionEntity) {
		try {
			BeanUtils.copyProperties(this, meishiCollectionEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



	//当前表的
	/**
	* 获取： 类型的值
	*/
	public String getMeishiCollectionValue() {
		return meishiCollectionValue;
	}
	/**
	* 设置： 类型的值
	*/
	public void setMeishiCollectionValue(String meishiCollectionValue) {
		this.meishiCollectionValue = meishiCollectionValue;
	}


	//级联表的get和set 美食

		/**
		* 获取： 美食编号
		*/
		public String getMeishiUuidNumber() {
			return meishiUuidNumber;
		}
		/**
		* 设置： 美食编号
		*/
		public void setMeishiUuidNumber(String meishiUuidNumber) {
			this.meishiUuidNumber = meishiUuidNumber;
		}

		/**
		* 获取： 美食名称
		*/
		public String getMeishiName() {
			return meishiName;
		}
		/**
		* 设置： 美食名称
		*/
		public void setMeishiName(String meishiName) {
			this.meishiName = meishiName;
		}
		/**
		* 获取：美食 的 商家
		*/
		public Integer getMeishiShangjiaId() {
			return meishiShangjiaId;
		}
		/**
		* 设置：美食 的 商家
		*/
		public void setMeishiShangjiaId(Integer meishiShangjiaId) {
			this.meishiShangjiaId = meishiShangjiaId;
		}

		/**
		* 获取： 美食照片
		*/
		public String getMeishiPhoto() {
			return meishiPhoto;
		}
		/**
		* 设置： 美食照片
		*/
		public void setMeishiPhoto(String meishiPhoto) {
			this.meishiPhoto = meishiPhoto;
		}
		/**
		* 获取： 美食类型
		*/
		public Integer getMeishiTypes() {
			return meishiTypes;
		}
		/**
		* 设置： 美食类型
		*/
		public void setMeishiTypes(Integer meishiTypes) {
			this.meishiTypes = meishiTypes;
		}


			/**
			* 获取： 美食类型的值
			*/
			public String getMeishiValue() {
				return meishiValue;
			}
			/**
			* 设置： 美食类型的值
			*/
			public void setMeishiValue(String meishiValue) {
				this.meishiValue = meishiValue;
			}

		/**
		* 获取： 美食库存
		*/
		public Integer getMeishiKucunNumber() {
			return meishiKucunNumber;
		}
		/**
		* 设置： 美食库存
		*/
		public void setMeishiKucunNumber(Integer meishiKucunNumber) {
			this.meishiKucunNumber = meishiKucunNumber;
		}

		/**
		* 获取： 美食原价
		*/
		public Double getMeishiOldMoney() {
			return meishiOldMoney;
		}
		/**
		* 设置： 美食原价
		*/
		public void setMeishiOldMoney(Double meishiOldMoney) {
			this.meishiOldMoney = meishiOldMoney;
		}

		/**
		* 获取： 现价
		*/
		public Double getMeishiNewMoney() {
			return meishiNewMoney;
		}
		/**
		* 设置： 现价
		*/
		public void setMeishiNewMoney(Double meishiNewMoney) {
			this.meishiNewMoney = meishiNewMoney;
		}

		/**
		* 获取： 美食热度
		*/
		public Integer getMeishiClicknum() {
			return meishiClicknum;
		}
		/**
		* 设置： 美食热度
		*/
		public void setMeishiClicknum(Integer meishiClicknum) {
			this.meishiClicknum = meishiClicknum;
		}

		/**
		* 获取： 美食介绍
		*/
		public String getMeishiContent() {
			return meishiContent;
		}
		/**
		* 设置： 美食介绍
		*/
		public void setMeishiContent(String meishiContent) {
			this.meishiContent = meishiContent;
		}
		/**
		* 获取： 是否上架
		*/
		public Integer getShangxiaTypes() {
			return shangxiaTypes;
		}
		/**
		* 设置： 是否上架
		*/
		public void setShangxiaTypes(Integer shangxiaTypes) {
			this.shangxiaTypes = shangxiaTypes;
		}


			/**
			* 获取： 是否上架的值
			*/
			public String getShangxiaValue() {
				return shangxiaValue;
			}
			/**
			* 设置： 是否上架的值
			*/
			public void setShangxiaValue(String shangxiaValue) {
				this.shangxiaValue = shangxiaValue;
			}

		/**
		* 获取： 逻辑删除
		*/
		public Integer getMeishiDelete() {
			return meishiDelete;
		}
		/**
		* 设置： 逻辑删除
		*/
		public void setMeishiDelete(Integer meishiDelete) {
			this.meishiDelete = meishiDelete;
		}
	//级联表的get和set 用户

		/**
		* 获取： 用户姓名
		*/
		public String getYonghuName() {
			return yonghuName;
		}
		/**
		* 设置： 用户姓名
		*/
		public void setYonghuName(String yonghuName) {
			this.yonghuName = yonghuName;
		}

		/**
		* 获取： 联系方式
		*/
		public String getYonghuPhone() {
			return yonghuPhone;
		}
		/**
		* 设置： 联系方式
		*/
		public void setYonghuPhone(String yonghuPhone) {
			this.yonghuPhone = yonghuPhone;
		}

		/**
		* 获取： 身份证号
		*/
		public String getYonghuIdNumber() {
			return yonghuIdNumber;
		}
		/**
		* 设置： 身份证号
		*/
		public void setYonghuIdNumber(String yonghuIdNumber) {
			this.yonghuIdNumber = yonghuIdNumber;
		}

		/**
		* 获取： 用户头像
		*/
		public String getYonghuPhoto() {
			return yonghuPhoto;
		}
		/**
		* 设置： 用户头像
		*/
		public void setYonghuPhoto(String yonghuPhoto) {
			this.yonghuPhoto = yonghuPhoto;
		}

		/**
		* 获取： 电子邮箱
		*/
		public String getYonghuEmail() {
			return yonghuEmail;
		}
		/**
		* 设置： 电子邮箱
		*/
		public void setYonghuEmail(String yonghuEmail) {
			this.yonghuEmail = yonghuEmail;
		}

		/**
		* 获取： 余额
		*/
		public Double getNewMoney() {
			return newMoney;
		}
		/**
		* 设置： 余额
		*/
		public void setNewMoney(Double newMoney) {
			this.newMoney = newMoney;
		}
		/**
		* 获取： 账号状态
		*/
		public Integer getStatusTypes() {
			return statusTypes;
		}
		/**
		* 设置： 账号状态
		*/
		public void setStatusTypes(Integer statusTypes) {
			this.statusTypes = statusTypes;
		}


			/**
			* 获取： 账号状态的值
			*/
			public String getStatusValue() {
				return statusValue;
			}
			/**
			* 设置： 账号状态的值
			*/
			public void setStatusValue(String statusValue) {
				this.statusValue = statusValue;
			}


	@Override
	public String toString() {
		return "MeishiCollectionView{" +
			", meishiCollectionValue=" + meishiCollectionValue +
			", meishiUuidNumber=" + meishiUuidNumber +
			", meishiName=" + meishiName +
			", meishiPhoto=" + meishiPhoto +
			", meishiKucunNumber=" + meishiKucunNumber +
			", meishiOldMoney=" + meishiOldMoney +
			", meishiNewMoney=" + meishiNewMoney +
			", meishiClicknum=" + meishiClicknum +
			", meishiContent=" + meishiContent +
			", meishiDelete=" + meishiDelete +
			", yonghuName=" + yonghuName +
			", yonghuPhone=" + yonghuPhone +
			", yonghuIdNumber=" + yonghuIdNumber +
			", yonghuPhoto=" + yonghuPhoto +
			", yonghuEmail=" + yonghuEmail +
			", newMoney=" + newMoney +
			"} " + super.toString();
	}
}
