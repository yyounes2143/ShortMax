package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgte extends zzgzh implements zzhat {
    private static final zzgte zza;
    private static volatile zzhba zzb;
    private int zzc;
    private zzgxz zzd = zzgxz.zzb;

    static {
        zzgte zzgteVar = new zzgte();
        zza = zzgteVar;
        zzgzh.zzbZ(zzgte.class, zzgteVar);
    }

    private zzgte() {
    }

    public static zzgtc zzb() {
        return (zzgtc) zza.zzaZ();
    }

    public static zzgte zzd(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzgte) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    public static zzhba zzg() {
        return zza.zzbN();
    }

    public final int zza() {
        return this.zzc;
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
                                    synchronized (zzgte.class) {
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
                    return new zzgtc(null);
                }
                return new zzgte();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzc", "zzd"});
        }
        return (byte) 1;
    }

    public final zzgxz zzf() {
        return this.zzd;
    }
}
