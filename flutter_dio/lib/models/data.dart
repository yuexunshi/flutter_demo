class Data {
	String id;
	String coverImageUrl;
	String desc;
	String title;
	String type;

	Data({this.id, this.coverImageUrl, this.desc, this.title, this.type});

	Data.fromJson(Map<String, dynamic> json) {
		id = json['_id'];
		coverImageUrl = json['coverImageUrl'];
		desc = json['desc'];
		title = json['title'];
		type = json['type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['_id'] = this.id;
		data['coverImageUrl'] = this.coverImageUrl;
		data['desc'] = this.desc;
		data['title'] = this.title;
		data['type'] = this.type;
		return data;
	}
}
