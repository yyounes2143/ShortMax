package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgtn extends zzgzh implements zzhat {
    private static final zzgtn zza;
    private static volatile zzhba zzb;

    static {
        zzgtn zzgtnVar = new zzgtn();
        zza = zzgtnVar;
        zzgzh.zzbZ(zzgtn.class, zzgtnVar);
    }

    private zzgtn() {
    }

    public static zzgtn zzb() {
        return zza;
    }

    public static zzgtn zzc(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzgtn) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
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
                                    synchronized (zzgtn.class) {
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
                    return new zzgtl(null);
                }
                return new zzgtn();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0000", null);
        }
        return (byte) 1;
    }
}
