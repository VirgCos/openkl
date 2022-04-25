package openk;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.Arrays;
import java.util.Base64;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

/**
 * Classe de hashage de mots de passe r�cup�r�e sur StackOverflow puis traduite et simplifi�e.
 *  
 * @author erickson
 * @see <a href="http://stackoverflow.com/a/2861125/3474">StackOverflow</a>
 */
public final class PasswordAuthentication {

	/**
	 * Chaque mot de passe crypt� par cette classe utilise ce pr�fix.
	 */
	public static final String ID = "$31$";

	/**
	 * Le co�t minimum recommand�.
	 */
	public static final int CPU_COST = 16;

	private static final String ALGORITHM = "PBKDF2WithHmacSHA1";

	private static final int SIZE = 128;

	private static final Pattern layout = Pattern.compile("\\$31\\$(\\d\\d?)\\$(.{43})");

	/**
	 * Hash (crypte) un mot de passe.
	 * @return un mot de passe crypt� pr�t pour �tre stock� dans une chaine de caract�res.
	 */
	public static String hash(String password) {
		char[] charsPassword = password.toCharArray();
		byte[] salt = new byte[SIZE / 8];
		SecureRandom random = new SecureRandom();
		random.nextBytes(salt);
		byte[] dk = pbkdf2(charsPassword, salt, 1 << CPU_COST);
		byte[] hash = new byte[salt.length + dk.length];
		System.arraycopy(salt, 0, hash, 0, salt.length);
		System.arraycopy(dk, 0, hash, salt.length, dk.length);
		Base64.Encoder enc = Base64.getUrlEncoder().withoutPadding();
		return ID + CPU_COST + '$' + enc.encodeToString(hash);
	}

	/**
	 * V�rifie qu'un mot de passe en clair correspond � un mot de passe crypt�.
	 * @param password Le mot de passe en clair (saisi)
	 * @param token Le mot de passe crypt� (en BDD)
	 * @return true si les mots de passe correspondent.
	 */
	public static boolean authenticate(String password, String token) {
		char[] charsPassword = password.toCharArray();
		Matcher m = layout.matcher(token);
		if (!m.matches()) {
			throw new IllegalArgumentException("Invalid token format");
		}
		byte[] hash = Base64.getUrlDecoder().decode(m.group(2));
		byte[] salt = Arrays.copyOfRange(hash, 0, SIZE / 8);
		byte[] check = pbkdf2(charsPassword, salt, 1 << CPU_COST);
		int zero = 0;
		for (int idx = 0; idx < check.length; ++idx) {
			zero |= hash[salt.length + idx] ^ check[idx];
		}
		return zero == 0;
	}

	/**
	 * Encrypte un mot de passe en pr�cisant tous les param�tres techniques.
	 * @param password Le mot depasse � crypter.
	 * @param salt Le "sel" ou la "graine" (nombre al�atoire de d�part)
	 * @param iterations Le nombre de cycles d'encryption
	 * @return Le mot de passe encrypt� avec les param�tres demand�s.
	 */
	private static byte[] pbkdf2(char[] password, byte[] salt, int iterations) {
		KeySpec spec = new PBEKeySpec(password, salt, iterations, SIZE);
		try {
			SecretKeyFactory f = SecretKeyFactory.getInstance(ALGORITHM);
			return f.generateSecret(spec).getEncoded();
		} catch (NoSuchAlgorithmException ex) {
			throw new IllegalStateException("Missing algorithm: " + ALGORITHM, ex);
		} catch (InvalidKeySpecException ex) {
			throw new IllegalStateException("Invalid SecretKeyFactory", ex);
		}
	}
}