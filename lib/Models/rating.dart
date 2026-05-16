import 'package:equatable/equatable.dart';

class RatingModel extends Equatable {
  final String beauty;
  final String mascara;

  RatingModel({required this.mascara, required this.beauty});
  Map<String, dynamic> toMap() {
    return {'mascara': mascara, 'beauty': beauty};
  }

  factory RatingModel.fromMap(Map<String, dynamic> map) {
    return RatingModel(
      mascara: map['mascara'] ?? '',
      beauty: map['beauty'] ?? '',
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [mascara, beauty];
}
