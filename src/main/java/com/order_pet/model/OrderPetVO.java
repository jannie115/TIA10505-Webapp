package com.order_pet.model;
import java.io.Serializable;

public class OrderPetVO implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer opetId;       // 預約寵物編號
    private Integer orderId;      // 訂單編號
    private Integer petId;        // 寵物編號
    
    

    // Getter 和 Setter 方法
    public Integer getOpetId() {
        return opetId;
    }

    public void setOpetId(Integer opetId) {
        this.opetId = opetId;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getPetId() {
        return petId;
    }

    public void setPetId(Integer petId) {
        this.petId = petId;
    }
	public com.pet.model.PetVO getPetVO(){
		com.pet.model.PetService petSvc = new com.pet.model.PetService();
		com.pet.model.PetVO petvo = petSvc.getOnePet(petId);
		return petvo;
	}
}
