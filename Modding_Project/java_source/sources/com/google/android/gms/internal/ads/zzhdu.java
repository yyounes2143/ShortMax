package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhdu extends zzgzh implements zzhat {
    private static final zzhdu zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private boolean zzf;
    private long zzg;

    static {
        zzhdu zzhduVar = new zzhdu();
        zza = zzhduVar;
        zzgzh.zzbZ(zzhdu.class, zzhduVar);
    }

    private zzhdu() {
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
                                    synchronized (zzhdu.class) {
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
                    return new zzhds(null);
                }
                return new zzhdu();
            }
            return zzgzh.zzbQ(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003ဇ\u0002\u0004ဂ\u0003", new Object[]{"zzc", "zzd", zzhdt.zza, "zze", zzhdr.zza, "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
