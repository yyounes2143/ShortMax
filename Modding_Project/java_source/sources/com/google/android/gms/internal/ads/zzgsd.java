package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgsd extends zzgzh implements zzhat {
    private static final zzgsd zza;
    private static volatile zzhba zzb;
    private int zzc;
    private zzgsj zzd;
    private zzgtu zze;

    static {
        zzgsd zzgsdVar = new zzgsd();
        zza = zzgsdVar;
        zzgzh.zzbZ(zzgsd.class, zzgsdVar);
    }

    private zzgsd() {
    }

    public static zzgsb zza() {
        return (zzgsb) zza.zzaZ();
    }

    public static zzgsd zzc(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzgsd) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    public static /* synthetic */ void zzg(zzgsd zzgsdVar, zzgsj zzgsjVar) {
        zzgsjVar.getClass();
        zzgsdVar.zzd = zzgsjVar;
        zzgsdVar.zzc |= 1;
    }

    public static /* synthetic */ void zzh(zzgsd zzgsdVar, zzgtu zzgtuVar) {
        zzgtuVar.getClass();
        zzgsdVar.zze = zzgtuVar;
        zzgsdVar.zzc |= 2;
    }

    public final zzgsj zzd() {
        zzgsj zzgsjVar = this.zzd;
        if (zzgsjVar == null) {
            return zzgsj.zzd();
        }
        return zzgsjVar;
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
                                    synchronized (zzgsd.class) {
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
                    return new zzgsb(null);
                }
                return new zzgsd();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final zzgtu zzf() {
        zzgtu zzgtuVar = this.zze;
        if (zzgtuVar == null) {
            return zzgtu.zzf();
        }
        return zzgtuVar;
    }
}
