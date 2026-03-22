package com.amazonaws.mobileconnectors.cognitoidentityprovider.util;

import com.amazonaws.util.StringUtils;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2.dex */
public final class Hkdf {

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f5630c = new byte[0];

    /* renamed from: a  reason: collision with root package name */
    private final String f5631a;

    /* renamed from: b  reason: collision with root package name */
    private SecretKey f5632b = null;

    private Hkdf(String str) {
        if (str.startsWith("Hmac")) {
            this.f5631a = str;
            return;
        }
        throw new IllegalArgumentException("Invalid algorithm " + str + ". Hkdf may only be used with Hmac algorithms.");
    }

    private void a() {
        if (this.f5632b != null) {
            return;
        }
        throw new IllegalStateException("Hkdf has not been initialized");
    }

    private Mac b() {
        try {
            Mac mac = Mac.getInstance(this.f5631a);
            mac.init(this.f5632b);
            return mac;
        } catch (InvalidKeyException e10) {
            throw new RuntimeException(e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new RuntimeException(e11);
        }
    }

    public static Hkdf f(String str) throws NoSuchAlgorithmException {
        Mac.getInstance(str);
        return new Hkdf(str);
    }

    public void c(byte[] bArr, int i10, byte[] bArr2, int i11) throws ShortBufferException {
        a();
        if (i10 >= 0) {
            if (bArr2.length >= i11 + i10) {
                Mac b10 = b();
                if (i10 <= b10.getMacLength() * 255) {
                    byte[] bArr3 = f5630c;
                    byte b11 = 1;
                    int i12 = 0;
                    while (i12 < i10) {
                        try {
                            b10.update(bArr3);
                            b10.update(bArr);
                            b10.update(b11);
                            bArr3 = b10.doFinal();
                            int i13 = 0;
                            while (i13 < bArr3.length && i12 < i10) {
                                bArr2[i12] = bArr3[i13];
                                i13++;
                                i12++;
                            }
                            b11 = (byte) (b11 + 1);
                        } finally {
                            Arrays.fill(bArr3, (byte) 0);
                        }
                    }
                    return;
                }
                throw new IllegalArgumentException("Requested keys may not be longer than 255 times the underlying HMAC length.");
            }
            throw new ShortBufferException();
        }
        throw new IllegalArgumentException("Length must be a non-negative value.");
    }

    public byte[] d(String str, int i10) {
        byte[] bArr;
        if (str != null) {
            bArr = str.getBytes(StringUtils.f6417a);
        } else {
            bArr = null;
        }
        return e(bArr, i10);
    }

    public byte[] e(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[i10];
        try {
            c(bArr, i10, bArr2, 0);
            return bArr2;
        } catch (ShortBufferException e10) {
            throw new RuntimeException(e10);
        }
    }

    public void g(byte[] bArr, byte[] bArr2) {
        byte[] bArr3;
        if (bArr2 == null) {
            bArr3 = f5630c;
        } else {
            bArr3 = (byte[]) bArr2.clone();
        }
        byte[] bArr4 = f5630c;
        try {
            try {
                Mac mac = Mac.getInstance(this.f5631a);
                if (bArr3.length == 0) {
                    bArr3 = new byte[mac.getMacLength()];
                    Arrays.fill(bArr3, (byte) 0);
                }
                mac.init(new SecretKeySpec(bArr3, this.f5631a));
                bArr4 = mac.doFinal(bArr);
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr4, this.f5631a);
                Arrays.fill(bArr4, (byte) 0);
                h(secretKeySpec);
                Arrays.fill(bArr4, (byte) 0);
            } catch (GeneralSecurityException e10) {
                throw new RuntimeException("Unexpected exception", e10);
            }
        } catch (Throwable th2) {
            Arrays.fill(bArr4, (byte) 0);
            throw th2;
        }
    }

    public void h(SecretKey secretKey) throws InvalidKeyException {
        if (secretKey.getAlgorithm().equals(this.f5631a)) {
            this.f5632b = secretKey;
            return;
        }
        throw new InvalidKeyException("Algorithm for the provided key must match the algorithm for this Hkdf. Expected " + this.f5631a + " but found " + secretKey.getAlgorithm());
    }
}
