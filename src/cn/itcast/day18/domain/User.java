package cn.itcast.day18.domain;

public class User {
	private String id;
	private String xxx;
	
	public User(){}
		
	public User(String id, String name) {
		this.id = id;
		this.xxx = name;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return xxx;
	}
	public void setName(String name) {
		this.xxx = name;
	}
	
}
