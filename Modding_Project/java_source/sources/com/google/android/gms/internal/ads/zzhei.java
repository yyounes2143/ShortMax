package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhei extends zzgzh implements zzhat {
    private static final zzhei zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private boolean zze;
    private int zzf;

    static {
        zzhei zzheiVar = new zzhei();
        zza = zzheiVar;
        zzgzh.zzbZ(zzhei.class, zzheiVar);
    }

    private zzhei() {
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
                                    synchronized (zzhei.class) {
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
                    return new zzheh(null);
                }
                return new zzhei();
            }
            zzgzn zzgznVar = zzheg.zza;
            return zzgzh.zzbQ(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003᠌\u0002", new Object[]{"zzc", "zzd", zzgznVar, "zze", "zzf", zzgznVar});
        }
        return (byte) 1;
    }
}
