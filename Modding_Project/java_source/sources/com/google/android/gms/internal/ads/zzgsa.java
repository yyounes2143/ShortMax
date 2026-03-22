package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgsa extends zzgzh implements zzhat {
    private static final zzgsa zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private zzgsg zze;
    private zzgtr zzf;

    static {
        zzgsa zzgsaVar = new zzgsa();
        zza = zzgsaVar;
        zzgzh.zzbZ(zzgsa.class, zzgsaVar);
    }

    private zzgsa() {
    }

    public static zzgry zzb() {
        return (zzgry) zza.zzaZ();
    }

    public static zzgsa zzd(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzgsa) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    public static zzhba zzh() {
        return zza.zzbN();
    }

    public static /* synthetic */ void zzi(zzgsa zzgsaVar, zzgsg zzgsgVar) {
        zzgsgVar.getClass();
        zzgsaVar.zze = zzgsgVar;
        zzgsaVar.zzc |= 1;
    }

    public static /* synthetic */ void zzj(zzgsa zzgsaVar, zzgtr zzgtrVar) {
        zzgtrVar.getClass();
        zzgsaVar.zzf = zzgtrVar;
        zzgsaVar.zzc |= 2;
    }

    public final int zza() {
        return this.zzd;
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
                                    synchronized (zzgsa.class) {
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
                    return new zzgry(null);
                }
                return new zzgsa();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003ဉ\u0001", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final zzgsg zzf() {
        zzgsg zzgsgVar = this.zze;
        if (zzgsgVar == null) {
            return zzgsg.zzd();
        }
        return zzgsgVar;
    }

    public final zzgtr zzg() {
        zzgtr zzgtrVar = this.zzf;
        if (zzgtrVar == null) {
            return zzgtr.zzd();
        }
        return zzgtrVar;
    }
}
