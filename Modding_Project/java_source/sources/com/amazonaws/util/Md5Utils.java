package com.amazonaws.util;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2.dex */
public class Md5Utils {
    public static byte[] a(File file) throws IOException {
        return b(new FileInputStream(file));
    }

    public static byte[] b(InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = bufferedInputStream.read(bArr, 0, 16384);
                    if (read == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, read);
                }
                byte[] digest = messageDigest.digest();
                try {
                    bufferedInputStream.close();
                } catch (Exception e10) {
                    Log b10 = LogFactory.b(Md5Utils.class);
                    b10.h("Unable to close input stream of hash candidate: " + e10);
                }
                return digest;
            } catch (NoSuchAlgorithmException e11) {
                throw new IllegalStateException(e11);
            }
        } catch (Throwable th2) {
            try {
                bufferedInputStream.close();
            } catch (Exception e12) {
                Log b11 = LogFactory.b(Md5Utils.class);
                b11.h("Unable to close input stream of hash candidate: " + e12);
            }
            throw th2;
        }
    }

    public static String c(File file) throws IOException {
        return Base64.encodeAsString(a(file));
    }

    public static String d(InputStream inputStream) throws IOException {
        return Base64.encodeAsString(b(inputStream));
    }
}
