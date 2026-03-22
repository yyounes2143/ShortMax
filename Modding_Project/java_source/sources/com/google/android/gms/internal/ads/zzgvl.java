package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgvl extends zzgzh implements zzhat {
    private static final zzgvl zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private zzgvr zze;
    private zzgxz zzf = zzgxz.zzb;

    static {
        zzgvl zzgvlVar = new zzgvl();
        zza = zzgvlVar;
        zzgzh.zzbZ(zzgvl.class, zzgvlVar);
    }

    private zzgvl() {
    }

    public static zzgvj zzb() {
        return (zzgvj) zza.zzaZ();
    }

    public static zzgvl zzd(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzgvl) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    public static /* synthetic */ void zzi(zzgvl zzgvlVar, zzgvr zzgvrVar) {
        zzgvrVar.getClass();
        zzgvlVar.zze = zzgvrVar;
        zzgvlVar.zzc |= 1;
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
                                    synchronized (zzgvl.class) {
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
                    return new zzgvj(null);
                }
                return new zzgvl();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final zzgvr zzf() {
        zzgvr zzgvrVar = this.zze;
        if (zzgvrVar == null) {
            return zzgvr.zzd();
        }
        return zzgvrVar;
    }

    public final zzgxz zzg() {
        return this.zzf;
    }
}
