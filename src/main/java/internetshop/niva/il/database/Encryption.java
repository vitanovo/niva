package internetshop.niva.il.database;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

/**
 * Created by ilugovecs on 2016.01.26..
 */
public class Encryption {

    public static void main(String[] args) throws NoSuchAlgorithmException {

        String passwordToHash = "abc";
        String salt = getSalt();

        String securePassword = get_SHA_1_SecurePassword(passwordToHash, salt);
        System.out.println(securePassword);

    }

        protected static String get_SHA_1_SecurePassword(String passwordToHash, String salt)
        {

            String generatedPassword = null;
            try {
                MessageDigest md = MessageDigest.getInstance("SHA-1");
                md.update(salt.getBytes());
                byte[] bytes = md.digest(passwordToHash.getBytes());
                StringBuilder sb = new StringBuilder();
                for(int i=0; i< bytes.length ;i++)
                {
                    sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
                }
                generatedPassword = sb.toString();
            }
            catch (NoSuchAlgorithmException e)
            {
                e.printStackTrace();
            }
            return generatedPassword;
        }

        protected static String getSalt() throws NoSuchAlgorithmException
        {
            SecureRandom sr = SecureRandom.getInstance("SHA1PRNG");
            byte[] salt = new byte[16];
            sr.nextBytes(salt);
            return salt.toString();
        }
    }


