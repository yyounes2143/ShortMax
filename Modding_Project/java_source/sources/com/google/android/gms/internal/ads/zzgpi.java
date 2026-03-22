package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgpi extends RuntimeException {
    public zzgpi(String str) {
        super(str);
    }

    public static Object zza(zzgph zzgphVar) {
        try {
            return zzgphVar.zza();
        } catch (Exception e10) {
            throw new zzgpi(e10);
        }
    }

    public zzgpi(String str, Throwable th2) {
        super(str, th2);
    }

    public zzgpi(Throwable th2) {
        super(th2);
    }
}
