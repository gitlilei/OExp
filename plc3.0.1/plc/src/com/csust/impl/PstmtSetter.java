package com.csust.impl;

import java.sql.PreparedStatement;



public interface PstmtSetter {
	public PreparedStatement setForPstmt(PreparedStatement ps) throws Exception;
}
