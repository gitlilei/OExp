package com.csust.entitylink;
/**
 * 角色-用户关联关系;
 * @author chenzhijun
 *
 */
public class RoleUserLink {
	private String userId;
	private int roleId;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	
	

}
