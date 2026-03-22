package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzayp extends zzgzh implements zzhat {
    private static final zzayp zza;
    private static volatile zzhba zzb;
    private int zzc;
    private zzays zzd;
    private zzgxz zze;
    private zzgxz zzf;

    static {
        zzayp zzaypVar = new zzayp();
        zza = zzaypVar;
        zzgzh.zzbZ(zzayp.class, zzaypVar);
    }

    private zzayp() {
        zzgxz zzgxzVar = zzgxz.zzb;
        this.zze = zzgxzVar;
        this.zzf = zzgxzVar;
    }

    public static zzayp zzb(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzayp) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    public final zzays zzc() {
        zzays zzaysVar = this.zzd;
        if (zzaysVar == null) {
            return zzays.zzg();
        }
        return zzaysVar;
    }

    public final zzgxz zzd() {
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
                                    synchronized (zzayp.class) {
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
                    return new zzayn(null);
                }
                return new zzayp();
            }
            return zzgzh.zzbQ(zza, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final zzgxz zzf() {
        return this.zze;
    }
}
