package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import entity.Room;

public class RoomDaoImpl implements RoomDao {

	private static DataSource dataSource;

	static {
		if (dataSource == null) {
			try {
				Context ctx = new InitialContext();
				dataSource = (DataSource) ctx.lookup("java:/comp/env/jdbc/web");
			} catch (Exception e) {
			}
		}
	}

	@Override
	public List<Room> findAllRooms() {

		String sql = "SELECT roomId, roomType, defaultRoomPrice, roomPrice, roomPic, roomDescription FROM hotel.room";

		List<Room> rooms = new ArrayList<>();
		try (Connection conn = dataSource.getConnection(); 
			 Statement st = conn.createStatement();) {
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				rooms.add(Room.builder()
						.roomId(rs.getInt("roomId"))
						.roomType(rs.getString("roomType"))
						.defaultRoomPrice(rs.getDouble("defaultRoomPrice"))
						.roomPrice(rs.getDouble("roomPrice"))
						.roomPic(rs.getString("roomPic"))
						.roomDescription(rs.getString("roomDescription"))
						.build());
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rooms;
	}

}
