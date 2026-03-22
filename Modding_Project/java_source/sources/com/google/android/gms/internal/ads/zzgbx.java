package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgbx {
    public static byte zza(long j10) {
        boolean z10;
        if ((j10 >> 8) == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzfvp.zzh(z10, "out of range: %s", j10);
        return (byte) j10;
    }
}
