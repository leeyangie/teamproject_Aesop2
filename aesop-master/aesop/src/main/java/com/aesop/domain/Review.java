package com.aesop.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Review {
	private int no;
	private Product product;
	private String title;
	private String content;
	private Member member;
	private int hits;
	private String resdate;
	private int starRating;
	
	public String getPname() {
		if(product != null) {
			return product.getPname();
		} else {
			return null;
		}
	}
	public String getEmail() {
		if(member != null) {
			return member.getEmail();
		} else {
			return null;
		}
	}
}
	
