package com.example.dao;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.example.entity.Activity;
@Repository // Component的衍生,跟資料庫互動
public class ActivityDaoImpl implements ActivityDao {
	@Autowired // spring自動注入
	JdbcTemplate jdbcTemplate; // 自動打開和關閉數據連接,簡化程式碼
	@Override
	public List<Activity> findAllActivities() {
		String sql = "SELECT activityId, activityImgPath, activityName, activityDate, activityDescription FROM web.activity";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Activity.class));
	}
	
	// 搜尋id，如果找5就跑出5
	@Override
	public Optional<Activity> findActivityById(Integer activityId) {
		String sql = "SELECT activityId, activityImgPath, activityName, activityDate, activityDescription FROM activity where activityId=?";
		Activity activity = jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(Activity.class), activityId);
		// Bean(類別)Property(屬性)Row(行列)Mapper(對應器,對應activity表格內容)
		return Optional.ofNullable(activity);
	}
}
