package com.google.android.gms.internal.p003firebaseauthapi;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzalh  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzalh {
    static final Charset zza;
    public static final byte[] zzb;

    static {
        Charset.forName(C.ASCII_NAME);
        zza = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        zzb = bArr;
        ByteBuffer.wrap(bArr);
        zzakh.zza(bArr, 0, bArr.length, false);
    }

    public static int zza(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static int zza(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int zza(byte[] bArr) {
        int length = bArr.length;
        int zza2 = zza(length, bArr, 0, length);
        if (zza2 == 0) {
            return 1;
        }
        return zza2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = i11; i13 < i11 + i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T zza(T t10) {
        t10.getClass();
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T zza(T t10, String str) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(zzamm zzammVar) {
        boolean z10 = zzammVar instanceof zzajn;
        return false;
    }
}
