package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgrr extends zzgzh implements zzhat {
    private static final zzgrr zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private zzgxz zze = zzgxz.zzb;
    private zzgrx zzf;

    static {
        zzgrr zzgrrVar = new zzgrr();
        zza = zzgrrVar;
        zzgzh.zzbZ(zzgrr.class, zzgrrVar);
    }

    private zzgrr() {
    }

    public static zzgrp zzb() {
        return (zzgrp) zza.zzaZ();
    }

    public static zzgrr zzd(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzgrr) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    public static zzhba zzh() {
        return zza.zzbN();
    }

    public static /* synthetic */ void zzj(zzgrr zzgrrVar, zzgrx zzgrxVar) {
        zzgrxVar.getClass();
        zzgrrVar.zzf = zzgrxVar;
        zzgrrVar.zzc |= 1;
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
                                    synchronized (zzgrr.class) {
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
                    return new zzgrp(null);
                }
                return new zzgrr();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003ဉ\u0000", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final zzgrx zzf() {
        zzgrx zzgrxVar = this.zzf;
        if (zzgrxVar == null) {
            return zzgrx.zzd();
        }
        return zzgrxVar;
    }

    public final zzgxz zzg() {
        return this.zze;
    }
}
