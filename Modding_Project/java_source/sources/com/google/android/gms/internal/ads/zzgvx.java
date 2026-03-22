package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgvx extends zzgzh implements zzhat {
    private static final zzgvx zza;
    private static volatile zzhba zzb;
    private int zzc;

    static {
        zzgvx zzgvxVar = new zzgvx();
        zza = zzgvxVar;
        zzgzh.zzbZ(zzgvx.class, zzgvxVar);
    }

    private zzgvx() {
    }

    public static zzgvx zzc() {
        return zza;
    }

    public static zzgvx zzd(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzgvx) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
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
                                    synchronized (zzgvx.class) {
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
                    return new zzgvv(null);
                }
                return new zzgvx();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzc"});
        }
        return (byte) 1;
    }
}
