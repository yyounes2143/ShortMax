package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzguv extends zzgzh implements zzhat {
    private static final zzguv zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private zzguy zze;

    static {
        zzguv zzguvVar = new zzguv();
        zza = zzguvVar;
        zzgzh.zzbZ(zzguv.class, zzguvVar);
    }

    private zzguv() {
    }

    public static zzgut zzb() {
        return (zzgut) zza.zzaZ();
    }

    public static zzguv zzd(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzguv) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    public static zzhba zzg() {
        return zza.zzbN();
    }

    public static /* synthetic */ void zzh(zzguv zzguvVar, zzguy zzguyVar) {
        zzguyVar.getClass();
        zzguvVar.zze = zzguyVar;
        zzguvVar.zzc |= 1;
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
                                    synchronized (zzguv.class) {
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
                    return new zzgut(null);
                }
                return new zzguv();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final zzguy zzf() {
        zzguy zzguyVar = this.zze;
        if (zzguyVar == null) {
            return zzguy.zzc();
        }
        return zzguyVar;
    }
}
