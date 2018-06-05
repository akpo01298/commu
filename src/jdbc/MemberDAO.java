
package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class MemberDAO {
	public static List<Member> findAll() throws Exception {
		String sql = "SELECT *FROM Member";
		try (Connection connection = DB.getConnection("Member");
				PreparedStatement statement = connection.prepareStatement(sql);
				ResultSet resultSet = statement.executeQuery()) {
			ArrayList<Member> list = new ArrayList<Member>();
			while (resultSet.next()) {
				Member Member = new Member();
				Member.setId(resultSet.getString("id"));
				Member.setPassword(resultSet.getString("password"));
				Member.setEmail(resultSet.getString("email"));
				Member.setNickname(resultSet.getString("nickname"));
				list.add(Member);
			}
			return list;
		}
	}
    public static void update(Member member) throws Exception {
        String sql = "UPDATE member SET id=?, password=?, email=?, grade=?, nickname=? " +
                     " WHERE id = ?";
        try (Connection connection = DB.getConnection("member");
             PreparedStatement statement = connection.prepareStatement(sql)) {
			statement.setString(1, member.getId());
			statement.setString(2, member.getPassword());
			statement.setString(3, member.getEmail());
			statement.setInt(4, member.getGrade());
			statement.setString(5, member.getNickname());
            statement.executeUpdate();
        }
    }


	public static void insert(Member member)throws Exception{
		String sql="insert member(id,password,email,grade,nickname) "+"values(?,?,?,?,?)";
		try (Connection connection = DB.getConnection("member");
				PreparedStatement statement = connection.prepareStatement(sql)) {
			statement.setString(1, member.getId());
			statement.setString(2, member.getPassword());
			statement.setString(3, member.getEmail());
			statement.setInt(4, member.getGrade());
			statement.setString(5, member.getNickname());
			statement.executeUpdate();
		}

	}


}