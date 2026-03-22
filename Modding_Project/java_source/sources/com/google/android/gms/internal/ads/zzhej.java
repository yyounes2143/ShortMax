package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@Deprecated
/* loaded from: classes4.dex */
public final class zzhej extends zzgzh implements zzhat {
    private static final zzhej zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private zzhei zze;
    private zzhei zzf;

    static {
        zzhej zzhejVar = new zzhej();
        zza = zzhejVar;
        zzgzh.zzbZ(zzhej.class, zzhejVar);
    }

    private zzhej() {
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
                                    synchronized (zzhej.class) {
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
                    return new zzhef(null);
                }
                return new zzhej();
            }
            return zzgzh.zzbQ(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzc", "zzd", zzheg.zza, "zze", "zzf"});
        }
        return (byte) 1;
    }
}
