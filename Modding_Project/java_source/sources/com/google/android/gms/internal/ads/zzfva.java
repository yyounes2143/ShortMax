package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzfva implements zzfvq {
    public static zzfva zzc(char c10) {
        return new zzfux(c10);
    }

    @Override // com.google.android.gms.internal.ads.zzfvq
    @Deprecated
    public final /* synthetic */ boolean zza(Object obj) {
        return zzb(((Character) obj).charValue());
    }

    public abstract boolean zzb(char c10);
}
