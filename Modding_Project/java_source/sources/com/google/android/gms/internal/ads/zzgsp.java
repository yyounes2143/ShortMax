package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgsp extends zzgzh implements zzhat {
    private static final zzgsp zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private zzgsv zze;
    private zzgxz zzf = zzgxz.zzb;

    static {
        zzgsp zzgspVar = new zzgsp();
        zza = zzgspVar;
        zzgzh.zzbZ(zzgsp.class, zzgspVar);
    }

    private zzgsp() {
    }

    public static zzgsn zzb() {
        return (zzgsn) zza.zzaZ();
    }

    public static zzgsp zzd(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzgsp) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    public static zzhba zzh() {
        return zza.zzbN();
    }

    public static /* synthetic */ void zzj(zzgsp zzgspVar, zzgsv zzgsvVar) {
        zzgsvVar.getClass();
        zzgspVar.zze = zzgsvVar;
        zzgspVar.zzc |= 1;
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
                                    synchronized (zzgsp.class) {
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
                    return new zzgsn(null);
                }
                return new zzgsp();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final zzgsv zzf() {
        zzgsv zzgsvVar = this.zze;
        if (zzgsvVar == null) {
            return zzgsv.zzd();
        }
        return zzgsvVar;
    }

    public final zzgxz zzg() {
        return this.zzf;
    }
}
