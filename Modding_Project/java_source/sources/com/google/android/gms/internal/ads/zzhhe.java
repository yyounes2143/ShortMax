package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhhe implements zzhha {
    private static final Object zza = new Object();
    private volatile zzhha zzb;
    private volatile Object zzc = zza;

    private zzhhe(zzhha zzhhaVar) {
        this.zzb = zzhhaVar;
    }

    public static zzhha zza(zzhha zzhhaVar) {
        if (!(zzhhaVar instanceof zzhhe) && !(zzhhaVar instanceof zzhgq)) {
            return new zzhhe(zzhhaVar);
        }
        return zzhhaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhhg, com.google.android.gms.internal.ads.zzhhf
    public final Object zzb() {
        Object obj = this.zzc;
        if (obj == zza) {
            zzhha zzhhaVar = this.zzb;
            if (zzhhaVar == null) {
                return this.zzc;
            }
            Object zzb = zzhhaVar.zzb();
            this.zzc = zzb;
            this.zzb = null;
            return zzb;
        }
        return obj;
    }
}
