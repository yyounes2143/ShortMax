package com.mbridge.msdk.foundation.tools;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* compiled from: SameFileMD5.java */
/* loaded from: classes5.dex */
public class m0 {

    /* renamed from: a  reason: collision with root package name */
    protected static char[] f27470a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b  reason: collision with root package name */
    protected static MessageDigest f27471b = null;

    /* renamed from: c  reason: collision with root package name */
    private static String f27472c = "SameFileMD5";

    static {
        try {
            f27471b = MessageDigest.getInstance(SameMD5.TAG);
        } catch (NoSuchAlgorithmException e10) {
            System.err.println(m0.class.getName() + "初始化失败，MessageDigest不支持MD5Util.");
            e10.printStackTrace();
        }
    }

    public static String a(File file) throws IOException {
        RandomAccessFile randomAccessFile;
        MessageDigest messageDigest;
        if (file == null || !file.exists()) {
            return "";
        }
        try {
            messageDigest = MessageDigest.getInstance(SameMD5.TAG);
            randomAccessFile = new RandomAccessFile(file, "r");
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
        try {
            byte[] bArr = new byte[10485760];
            while (true) {
                int read = randomAccessFile.read(bArr);
                if (read == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, read);
            }
            String a10 = a(messageDigest.digest());
            try {
                randomAccessFile.close();
            } catch (IOException e10) {
                p0.b(f27472c, e10.getMessage());
            }
            return a10;
        } catch (Throwable th3) {
            th = th3;
            try {
                p0.b(f27472c, th.getMessage());
                return "";
            } finally {
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException e11) {
                        p0.b(f27472c, e11.getMessage());
                    }
                }
            }
        }
    }

    private static String a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    private static String a(byte[] bArr, int i10, int i11) {
        StringBuffer stringBuffer = new StringBuffer(i11 * 2);
        int i12 = i11 + i10;
        while (i10 < i12) {
            a(bArr[i10], stringBuffer);
            i10++;
        }
        return stringBuffer.toString();
    }

    private static void a(byte b10, StringBuffer stringBuffer) {
        char[] cArr = f27470a;
        char c10 = cArr[(b10 & 240) >> 4];
        char c11 = cArr[b10 & 15];
        stringBuffer.append(c10);
        stringBuffer.append(c11);
    }
}
