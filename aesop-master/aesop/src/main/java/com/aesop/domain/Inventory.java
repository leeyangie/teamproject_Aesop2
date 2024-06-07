package com.aesop.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Inventory {
	private int ino;
	private Product product;
	private int iprice;
	private int oprice;
	private int amount;
	private String remark;
	private String resdate;
}
