/**
 * 
 */
package com.edu.constant;


/**
 * @author kasimodo
 *
 */
public class Constant {
	
	
	public static interface NewsCategory {
		@ConstantDesc(groupName = "NewsCategory", descValue = "分类-招生简介")
		public final static String ZSJJ="ZSJJ";
		@ConstantDesc(groupName = "NewsCategory", descValue = "分类-学校信息")
		public final static String XXXX="XXXX";
		@ConstantDesc(groupName = "NewsCategory", descValue = "分类-中考信息")
		public final static String ZKXX="ZKXX";
		@ConstantDesc(groupName = "NewsCategory", descValue = "分类-高考信息")
		public final static String GKXX="GKXX";
		@ConstantDesc(groupName = "NewsCategory", descValue = "分类-学校简介")
		public final static String XXJJ="XXJJ";
		@ConstantDesc(groupName = "NewsCategory", descValue = "分类-校园新闻")
		public final static String XYXW="XYXW";

	}

	public static interface PictureCategory {
		@ConstantDesc(groupName = "PictureCategory", descValue = "证书展示")
		public final static String ZSZS = "ZSZS";
		@ConstantDesc(groupName = "PictureCategory", descValue = "校园风光")
		public final static String XYFG = "XYFG";
		@ConstantDesc(groupName = "PictureCategory", descValue = "学校logo")
		public final static String LOGO = "LOGO";
	}

}
