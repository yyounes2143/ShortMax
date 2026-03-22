package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgpj {
    public static final /* synthetic */ int zza = 0;

    static {
        Charset.forName("UTF-8");
    }

    public static final zzgxe zza(String str) throws GeneralSecurityException {
        byte[] bArr = new byte[str.length()];
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (charAt >= '!' && charAt <= '~') {
                bArr[i10] = (byte) charAt;
            } else {
                throw new GeneralSecurityException("Not a printable ASCII character: " + charAt);
            }
        }
        return zzgxe.zzb(bArr);
    }

    public static final zzgxe zzb(String str) {
        byte[] bArr = new byte[str.length()];
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (charAt >= '!' && charAt <= '~') {
                bArr[i10] = (byte) charAt;
            } else {
                throw new zzgpi("Not a printable ASCII character: " + charAt);
            }
        }
        return zzgxe.zzb(bArr);
    }

    public static boolean zzc(byte[] bArr, byte[] bArr2) {
        if (bArr2.length < bArr.length) {
            return false;
        }
        for (int i10 = 0; i10 < bArr.length; i10++) {
            if (bArr2[i10] != bArr[i10]) {
                return false;
            }
        }
        return true;
    }
}
