package com.book.web3;;
public class Book {
	private String name;
	private int num;
	private int math;
	private int java;
	private int english;
	private int sport;
	private int cla;
	private String sex;
	private String bir;
	private String teaname;
	private String pwd;
	private int avg_math;
	private int avg_java;
	private int avg_english;
	private int avg_sport;
	private int total;
	private int avg_total;
	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name = name;
	}
	public int getNum(){
		return num;
	}
	public void setNum(int num){
		this.num = num;
	}
	public int getMath(){
		return math;
	}
	public void setMath(int math){
		this.math = math;
	}
	public int getJava(){
		return java;
	}
	public void setJava(int java){
		this.java = java;
	}
	public int getEnglish(){
		return english;
	}
	public void setEnglish(int english){
		this.english = english;
	}
	public int getSport(){
		return sport;
	}
	public void setSport(int sport){
		this.sport = sport;
	}
	public int getCla(){
		return cla;
	}
	public void setCla(int cla){
		this.cla = cla;
	}
	public String getSex(){
		return sex;
	}
	public void setSex(String sex){
		this.sex = sex;
	}
	public String getBir(){
		return bir;
	}
	public void setBir(String bir){
		this.bir = bir;
	}
	public String getTeaname(){
		return teaname;
	}
	public void setTeaname(String teaname){
		this.teaname= teaname;
	}
	public String getPwd(){
		return pwd;
	}
	public void setPwd(String pwd){
		this.pwd=pwd;
	}
	public int getAvg_math() {
		return avg_math;
	}
	public void setAvg_math(int avg_math) {
		this.avg_math = avg_math;
	}
	public int getAvg_java() {
		return avg_java;
	}
	public void setAvg_java(int avg_java) {
		this.avg_java = avg_java;
	}
	public int getAvg_english() {
		return avg_english;
	}
	public void setAvg_english(int avg_english) {
		this.avg_english = avg_english;
	}
	public int getAvg_sport() {
		return avg_sport;
	}
	public void setAvg_sport(int avg_sport) {
		this.avg_sport = avg_sport;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getAvg_total() {
		return avg_total;
	}
	public void setAvg_total(int avg_total) {
		this.avg_total = avg_total;
	}
	

public Book() {}
public Book(int num,String name,int math,int java,int english,int sport,int avg_math,int avg_java,int avg_english,int avg_sport,int total,int avg_total) {
	this.num=num;
	this.name=name;
	this.math=math;
	this.java=java;
	this.english=english;
	this.sport=sport;
	this.avg_math = avg_math;
	this.avg_java = avg_java;
	this.avg_english = avg_english;
	this.avg_sport=avg_sport;
	this.total=total;
	this.avg_total=avg_total;
}
}

