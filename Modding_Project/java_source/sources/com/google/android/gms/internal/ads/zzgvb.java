package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgvb extends zzgzh implements zzhat {
    private static final zzgvb zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private zzgve zze;

    static {
        zzgvb zzgvbVar = new zzgvb();
        zza = zzgvbVar;
        zzgzh.zzbZ(zzgvb.class, zzgvbVar);
    }

    private zzgvb() {
    }

    public static zzguz zzb() {
        return (zzguz) zza.zzaZ();
    }

    public static zzgvb zzd(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzgvb) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    public static zzhba zzg() {
        return zza.zzbN();
    }

    public static /* synthetic */ void zzh(zzgvb zzgvbVar, zzgve zzgveVar) {
        zzgveVar.getClass();
        zzgvbVar.zze = zzgveVar;
        zzgvbVar.zzc |= 1;
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
                                    synchronized (zzgvb.class) {
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
                    return new zzguz(null);
                }
                return new zzgvb();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final zzgve zzf() {
        zzgve zzgveVar = this.zze;
        if (zzgveVar == null) {
            return zzgve.zzd();
        }
        return zzgveVar;
    }
}
