package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgtr extends zzgzh implements zzhat {
    private static final zzgtr zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private zzgtx zze;
    private zzgxz zzf = zzgxz.zzb;

    static {
        zzgtr zzgtrVar = new zzgtr();
        zza = zzgtrVar;
        zzgzh.zzbZ(zzgtr.class, zzgtrVar);
    }

    private zzgtr() {
    }

    public static zzgtp zzb() {
        return (zzgtp) zza.zzaZ();
    }

    public static zzgtr zzd() {
        return zza;
    }

    public static zzgtr zzf(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzgtr) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    public static zzhba zzi() {
        return zza.zzbN();
    }

    public static /* synthetic */ void zzk(zzgtr zzgtrVar, zzgtx zzgtxVar) {
        zzgtxVar.getClass();
        zzgtrVar.zze = zzgtxVar;
        zzgtrVar.zzc |= 1;
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
                                    synchronized (zzgtr.class) {
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
                    return new zzgtp(null);
                }
                return new zzgtr();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final zzgtx zzg() {
        zzgtx zzgtxVar = this.zze;
        if (zzgtxVar == null) {
            return zzgtx.zzf();
        }
        return zzgtxVar;
    }

    public final zzgxz zzh() {
        return this.zzf;
    }
}
