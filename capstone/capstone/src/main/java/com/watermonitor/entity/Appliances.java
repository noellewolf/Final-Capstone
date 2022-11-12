package com.watermonitor.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

	@Entity
	@Table(name="appliances")
	public class Appliances {

		@Id
		@Column(name = "id")
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Integer id;
		
		@Column(name="bathtub")
		private String bathtub;
		
		@Column(name="dishwasher")
		private String dishwasher;
		
		@Column(name="faucet")
		private String faucet;
		
		@Column(name="shower")
		private String shower;
		
		@Column(name="toilet")
		private String toilet;
		
		@Column(name="washingmachine")
		private String washingmachine;
		
		@Column(name="other")
		private String other;
		
		public Appliances () {
			
		}

		public Appliances(String bathtub, String dishwasher, String faucet, String shower, String toilet,
				String washingmachine, String other) {
			super();
			this.bathtub = bathtub;
			this.dishwasher = dishwasher;
			this.faucet = faucet;
			this.shower = shower;
			this.toilet = toilet;
			this.washingmachine = washingmachine;
			this.other = other;
		}

		public String getBathtub() {
			return bathtub;
		}

		public void setBathtub(String bathtub) {
			this.bathtub = bathtub;
		}

		public String getDishwasher() {
			return dishwasher;
		}

		public void setDishwasher(String dishwasher) {
			this.dishwasher = dishwasher;
		}

		public String getFaucet() {
			return faucet;
		}

		public void setFaucet(String faucet) {
			this.faucet = faucet;
		}

		public String getShower() {
			return shower;
		}

		public void setShower(String shower) {
			this.shower = shower;
		}

		public String getToilet() {
			return toilet;
		}

		public void setToilet(String toilet) {
			this.toilet = toilet;
		}

		public String getWashingmachine() {
			return washingmachine;
		}

		public void setWashingmachine(String washingmachine) {
			this.washingmachine = washingmachine;
		}

		public String getOther() {
			return other;
		}

		public void setOther(String other) {
			this.other = other;
		}
		
		
}

