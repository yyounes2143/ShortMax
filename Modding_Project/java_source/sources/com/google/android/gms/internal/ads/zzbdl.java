package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@Deprecated
/* loaded from: classes4.dex */
public final class zzbdl {
    public static boolean zza(@Nullable zzbdt zzbdtVar, @Nullable zzbdq zzbdqVar, String... strArr) {
        if (zzbdqVar == null) {
            return false;
        }
        zzbdtVar.zze(zzbdqVar, com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime(), strArr);
        return true;
    }
}
