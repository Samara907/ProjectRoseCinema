package rose.DTO;

import java.util.Date;

public class CouponDTO {
	private int coupon_id;
	private String coupon_name;
	private Date cstart_date;
	private Date cend_date;
	private Date used_date;
	private int used;
	
	public int getCoupon_id() {
		return coupon_id;
	}
	public void setCoupon_id(int coupon_id) {
		this.coupon_id = coupon_id;
	}
	public String getCoupon_name() {
		return coupon_name;
	}
	public void setCoupon_name(String coupon_name) {
		this.coupon_name = coupon_name;
	}
	public Date getCstart_date() {
		return cstart_date;
	}
	public void setCstart_date(Date cstart_date) {
		this.cstart_date = cstart_date;
	}
	public Date getCend_date() {
		return cend_date;
	}
	public void setCend_date(Date cend_date) {
		this.cend_date = cend_date;
	}
	public Date getUsed_date() {
		return used_date;
	}
	public void setUsed_date(Date used_date) {
		this.used_date = used_date;
	}
	public int getUsed() {
		return used;
	}
	public void setUsed(int used) {
		this.used = used;
	}
	
}
