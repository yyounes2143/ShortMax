package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhdz extends zzgzh implements zzhat {
    private static final zzhdz zza;
    private static volatile zzhba zzb;
    private int zzc;
    private zzgxz zzd;
    private zzgxz zze;
    private zzgxz zzf;

    static {
        zzhdz zzhdzVar = new zzhdz();
        zza = zzhdzVar;
        zzgzh.zzbZ(zzhdz.class, zzhdzVar);
    }

    private zzhdz() {
        zzgxz zzgxzVar = zzgxz.zzb;
        this.zzd = zzgxzVar;
        this.zze = zzgxzVar;
        this.zzf = zzgxzVar;
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
                                    synchronized (zzhdz.class) {
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
                    return new zzhdy(null);
                }
                return new zzhdz();
            }
            return zzgzh.zzbQ(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
