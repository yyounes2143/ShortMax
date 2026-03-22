package com.facebook.soloader;

import com.mbridge.msdk.foundation.tools.SameMD5;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* compiled from: SoFileLoaderImpl.java */
/* loaded from: classes2.dex */
public class u implements t {

    /* renamed from: a  reason: collision with root package name */
    private final Runtime f16871a = null;

    /* renamed from: b  reason: collision with root package name */
    private final Method f16872b = null;

    /* renamed from: c  reason: collision with root package name */
    private final String f16873c = null;

    /* renamed from: d  reason: collision with root package name */
    private final String f16874d = null;

    private String b(String str) {
        try {
            File file = new File(str);
            MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read > 0) {
                        messageDigest.update(bArr, 0, read);
                    } else {
                        String format = String.format("%32x", new BigInteger(1, messageDigest.digest()));
                        fileInputStream.close();
                        return format;
                    }
                }
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (IOException | SecurityException | NoSuchAlgorithmException e10) {
            return e10.toString();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
        if (r2 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002e, code lost:
        com.facebook.soloader.o.b("SoFileLoaderImpl", "Error when loading library: " + r2 + ", library hash is " + b(r7) + ", LD_LIBRARY_PATH is " + r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:?, code lost:
        return;
     */
    @Override // com.facebook.soloader.t
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r7, int r8) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.u.a(java.lang.String, int):void");
    }
}
