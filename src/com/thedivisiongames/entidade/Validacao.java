package com.thedivisiongames.entidade;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validacao {
  private static final int[] pesoCPF = {11,10,9,8,7,6,5,4,3,2,};
  private static final int[] pesoCNPJ = {6,5,4,3,2,9,8,7,6,5,4,3,2};
  private static int calcularDigito(String str, int[] peso){
	  int soma = 0;
	  for(int indice=str.length()-1, digito; indice >=0; indice--){
		  digito = Integer.parseInt(str.substring(indice,indice+1));
		  soma += digito*peso[peso.length-str.length()+indice];
	  }
	  soma = 11 - soma%11;
	  return soma > 9 ? 0 : soma;
  }

  public static boolean isValidCPF(String cpf){
	if((cpf==null)||(cpf.length()!=11)){
		return false;
		}
	else if(cpf.equals("00000000000")||cpf.equals("11111111111")||
			cpf.equals("22222222222")||cpf.equals("33333333333")||
			cpf.equals("44444444444")||cpf.equals("55555555555")||
			cpf.equals("66666666666")||cpf.equals("77777777777")||
			cpf.equals("88888888888")||cpf.equals("99999999999")){
		return false;
	}
	Integer digito1 = calcularDigito(cpf.substring(0, 9),pesoCPF);
	Integer digito2 = calcularDigito(cpf.substring(0,9)+ digito1,pesoCPF);
	return cpf.equals(cpf.substring(0,9)+ digito1.toString() + digito2.toString());
 }
  public static boolean isValidCNPJ(String cnpj){
		if((cnpj==null)||(cnpj.length()!=11)){
			return false;
		}
		else if(cnpj.equals("00000000000000")||cnpj.equals("11111111111111")||
				cnpj.equals("22222222222222")||cnpj.equals("33333333333333")||
				cnpj.equals("44444444444444")||cnpj.equals("55555555555555")||
				cnpj.equals("66666666666666")||cnpj.equals("77777777777777")||
				cnpj.equals("88888888888888")||cnpj.equals("99999999999999")){
			return false;
		}
		Integer digito1 = calcularDigito(cnpj.substring(0, 12),pesoCNPJ);
		Integer digito2 = calcularDigito(cnpj.substring(0,12)+ digito1,pesoCNPJ);
		return cnpj.equals(cnpj.substring(0,9)+ digito1.toString() + digito2.toString());
  }
  public static boolean isEmailValid(String email) {
      if ((email == null) || (email.trim().length() == 0))
          return false;

      String emailPattern = "\\b(^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@([A-Za-z0-9-])+(\\.[A-Za-z0-9-]+)*((\\.[A-Za-z0-9]{2,})|(\\.[A-Za-z0-9]{2,}\\.[A-Za-z0-9]{2,}))$)\\b";
      Pattern pattern = Pattern.compile(emailPattern, Pattern.CASE_INSENSITIVE);
      Matcher matcher = pattern.matcher(email);
      return matcher.matches();
  }
}