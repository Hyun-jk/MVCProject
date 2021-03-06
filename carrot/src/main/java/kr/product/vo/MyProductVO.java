package kr.product.vo;

import kr.member.vo.MemberVO;
import kr.product.dao.ProductDAO;

public class MyProductVO {
	private int amyproduct_num;
	private int aproduct_num;
	private int amember_num;
	
	private ProductVO product;
	private MemberVO member;
	
	
	public int getAmyproduct_num() {
		return amyproduct_num;
	}
	public void setAmyproduct_num(int amyproduct_num) {
		this.amyproduct_num = amyproduct_num;
	}
	public int getAproduct_num() {
		return aproduct_num;
	}
	public void setAproduct_num(int aproduct_num) {
		this.aproduct_num = aproduct_num;
	}
	public int getAmember_num() {
		return amember_num;
	}
	public void setAmember_num(int amember_num) {
		this.amember_num = amember_num;
	}
	
	public ProductVO getProduct() {
		return product;
	}
	public void setProduct(ProductVO product) {
		this.product = product;
	}
	public MemberVO getMember() {
		return member;
	}
	public void setMember(MemberVO member) {
		this.member = member;
	}
	
}