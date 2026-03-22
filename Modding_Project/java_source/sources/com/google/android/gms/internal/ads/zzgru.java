package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgru extends zzgzh implements zzhat {
    private static final zzgru zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private zzgrx zze;

    static {
        zzgru zzgruVar = new zzgru();
        zza = zzgruVar;
        zzgzh.zzbZ(zzgru.class, zzgruVar);
    }

    private zzgru() {
    }

    public static zzgrs zzb() {
        return (zzgrs) zza.zzaZ();
    }

    public static zzgru zzd(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzgru) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    public static /* synthetic */ void zzh(zzgru zzgruVar, zzgrx zzgrxVar) {
        zzgrxVar.getClass();
        zzgruVar.zze = zzgrxVar;
        zzgruVar.zzc |= 1;
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
                                    synchronized (zzgru.class) {
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
                    return new zzgrs(null);
                }
                return new zzgru();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final zzgrx zzf() {
        zzgrx zzgrxVar = this.zze;
        if (zzgrxVar == null) {
            return zzgrx.zzd();
        }
        return zzgrxVar;
    }
}
