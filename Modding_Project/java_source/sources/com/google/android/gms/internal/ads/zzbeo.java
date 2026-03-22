package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public class zzbeo {
    private final String zza;
    private final Object zzb;
    private final int zzc;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzbeo(String str, Object obj, int i10) {
        this.zza = str;
        this.zzb = obj;
        this.zzc = i10;
    }

    public static zzbeo zza(String str, double d10) {
        return new zzbeo(str, Double.valueOf(d10), 3);
    }

    public static zzbeo zzb(String str, long j10) {
        return new zzbeo(str, Long.valueOf(j10), 2);
    }

    public static zzbeo zzc(String str, String str2) {
        return new zzbeo("gad:dynamite_module:experiment_id", "", 4);
    }

    public static zzbeo zzd(String str, boolean z10) {
        return new zzbeo(str, Boolean.valueOf(z10), 1);
    }

    public final Object zze() {
        zzbft zza = zzbfv.zza();
        if (zza == null) {
            if (zzbfv.zzb() != null) {
                zzbfv.zzb().zza();
            }
            return this.zzb;
        }
        int i10 = this.zzc - 1;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return zza.zzd(this.zza, (String) this.zzb);
                }
                return zza.zzb(this.zza, ((Double) this.zzb).doubleValue());
            }
            return zza.zzc(this.zza, ((Long) this.zzb).longValue());
        }
        return zza.zza(this.zza, ((Boolean) this.zzb).booleanValue());
    }
}
