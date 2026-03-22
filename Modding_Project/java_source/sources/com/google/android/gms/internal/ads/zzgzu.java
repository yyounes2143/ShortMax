package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgzu {
    static final Charset zza;
    public static final byte[] zzb;
    public static final ByteBuffer zzc;

    static {
        Charset.forName(C.ASCII_NAME);
        zza = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        zzb = bArr;
        zzc = ByteBuffer.wrap(bArr);
        zzgyf.zzH(bArr, 0, 0, false);
    }

    public static int zza(boolean z10) {
        if (z10) {
            return 1231;
        }
        return 1237;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = i11; i13 < i11 + i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzc(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str);
    }
}
