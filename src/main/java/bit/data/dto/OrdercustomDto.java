package bit.data.dto;

import java.sql.Timestamp;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class OrdercustomDto {

	private String to_member_id;
	private int count;
}
