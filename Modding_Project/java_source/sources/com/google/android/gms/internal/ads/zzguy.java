package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzguy extends zzgzh implements zzhat {
    private static final zzguy zza;
    private static volatile zzhba zzb;
    private String zzc = "";

    static {
        zzguy zzguyVar = new zzguy();
        zza = zzguyVar;
        zzgzh.zzbZ(zzguy.class, zzguyVar);
    }

    private zzguy() {
    }

    public static zzguw zza() {
        return (zzguw) zza.zzaZ();
    }

    public static zzguy zzc() {
        return zza;
    }

    public static zzguy zzd(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzguy) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    public static /* synthetic */ void zzg(zzguy zzguyVar, String str) {
        str.getClass();
        zzguyVar.zzc = str;
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
                                    synchronized (zzguy.class) {
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
                    return new zzguw(null);
                }
                return new zzguy();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"zzc"});
        }
        return (byte) 1;
    }

    public final String zzf() {
        return this.zzc;
    }
}
