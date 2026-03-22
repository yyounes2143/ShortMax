package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgtu extends zzgzh implements zzhat {
    private static final zzgtu zza;
    private static volatile zzhba zzb;
    private int zzc;
    private zzgtx zzd;
    private int zze;
    private int zzf;

    static {
        zzgtu zzgtuVar = new zzgtu();
        zza = zzgtuVar;
        zzgzh.zzbZ(zzgtu.class, zzgtuVar);
    }

    private zzgtu() {
    }

    public static zzgts zzc() {
        return (zzgts) zza.zzaZ();
    }

    public static zzgtu zzf() {
        return zza;
    }

    public static zzgtu zzg(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzgtu) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    public static /* synthetic */ void zzj(zzgtu zzgtuVar, zzgtx zzgtxVar) {
        zzgtxVar.getClass();
        zzgtuVar.zzd = zzgtxVar;
        zzgtuVar.zzc |= 1;
    }

    public final int zza() {
        return this.zze;
    }

    public final int zzb() {
        return this.zzf;
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
                                    synchronized (zzgtu.class) {
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
                    return new zzgts(null);
                }
                return new zzgtu();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b\u0003\u000b", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final zzgtx zzh() {
        zzgtx zzgtxVar = this.zzd;
        if (zzgtxVar == null) {
            return zzgtx.zzf();
        }
        return zzgtxVar;
    }
}
