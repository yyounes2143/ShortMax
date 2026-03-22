package com.google.android.gms.internal.ads;

import android.util.Base64;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaul {
    public static String zza(byte[] bArr, boolean z10) {
        int i10;
        if (true != z10) {
            i10 = 2;
        } else {
            i10 = 11;
        }
        return Base64.encodeToString(bArr, i10);
    }

    public static byte[] zzb(String str, boolean z10) throws IllegalArgumentException {
        byte[] decode = Base64.decode(str, 2);
        if (decode.length == 0 && str.length() > 0) {
            throw new IllegalArgumentException("Unable to decode ".concat(str));
        }
        return decode;
    }
}
