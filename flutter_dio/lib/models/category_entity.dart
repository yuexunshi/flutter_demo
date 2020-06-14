import "data.dart";

class CategoryEntity {
	List<Data> data;
	int status;

	CategoryEntity({this.data, this.status});

	CategoryEntity.fromJson(Map<String, dynamic> json) {
		if (json['data'] != null) {
			data = new List<Data>();
			json['data'].forEach((v) { data.add(new Data.fromJson(v)); });
		}
		status = json['status'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.data!= null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
		data['status'] = this.status;
		return data;
	}
}
