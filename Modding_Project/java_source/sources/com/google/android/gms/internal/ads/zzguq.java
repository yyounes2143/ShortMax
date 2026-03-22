package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzguq extends zzgzh implements zzhat {
    private static final zzguq zza;
    private static volatile zzhba zzb;
    private String zzc = "";
    private int zzd;
    private int zze;
    private int zzf;

    static {
        zzguq zzguqVar = new zzguq();
        zza = zzguqVar;
        zzgzh.zzbZ(zzguq.class, zzguqVar);
    }

    private zzguq() {
    }

    public static zzgup zza() {
        return (zzgup) zza.zzaZ();
    }

    public static /* bridge */ /* synthetic */ zzguq zzb() {
        return zza;
    }

    public static /* synthetic */ void zzc(zzguq zzguqVar, int i10) {
        zzguqVar.zze = i10;
    }

    public static /* synthetic */ void zzd(zzguq zzguqVar, zzgvf zzgvfVar) {
        zzguqVar.zzf = zzgvfVar.zza();
    }

    public static /* synthetic */ void zzf(zzguq zzguqVar, String str) {
        str.getClass();
        zzguqVar.zzc = str;
    }

    public static /* synthetic */ void zzg(zzguq zzguqVar, int i10) {
        zzguqVar.zzd = zzguc.zza(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzgzh
    protected final Object zzdd(zzgzg zzgzgVar, Object obj, Object obj2) {
        int ordinal = zzgzgVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        if (ordinal != 5) {
                            if (ordinal == 6) {
                                zzhba zzhbaVar = zzb;
                                if (zzhbaVar == null) {
                                    synchronized (zzguq.class) {
                                        try {
                                            zzhbaVar = zzb;
                                            if (zzhbaVar == null) {
                                                zzhbaVar = new zzgzc(zza);
                                                zzb = zzhbaVar;
                                            }
                                        } finally {
                                        }
                                    }
                                }
                                return zzhbaVar;
                            }
                            throw null;
                        }
                        return zza;
                    }
                    return new zzgup(null);
                }
                return new zzguq();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
