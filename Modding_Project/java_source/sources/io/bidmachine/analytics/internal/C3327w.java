package io.bidmachine.analytics.internal;

import java.security.GeneralSecurityException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: io.bidmachine.analytics.internal.w  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public final class C3327w implements B {
    @Override // io.bidmachine.analytics.internal.B
    public byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return a("HMACSHA256", bArr, bArr3, bArr2, 32);
    }

    private final byte[] a(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, int i10) {
        Mac mac = Mac.getInstance(str);
        if (i10 <= mac.getMacLength() * 255) {
            if (bArr2 != null && bArr2.length != 0) {
                mac.init(new SecretKeySpec(bArr2, str));
            } else {
                mac.init(new SecretKeySpec(new byte[mac.getMacLength()], str));
            }
            byte[] bArr4 = new byte[i10];
            mac.init(new SecretKeySpec(mac.doFinal(bArr), str));
            byte[] bArr5 = new byte[0];
            int i11 = 1;
            int i12 = 0;
            while (true) {
                mac.update(bArr5);
                if (bArr3 != null) {
                    mac.update(bArr3);
                }
                mac.update((byte) i11);
                bArr5 = mac.doFinal();
                if (bArr5.length + i12 < i10) {
                    System.arraycopy(bArr5, 0, bArr4, i12, bArr5.length);
                    i12 += bArr5.length;
                    i11++;
                } else {
                    System.arraycopy(bArr5, 0, bArr4, i12, i10 - i12);
                    return bArr4;
                }
            }
        } else {
            throw new GeneralSecurityException("size too large");
        }
    }
}
