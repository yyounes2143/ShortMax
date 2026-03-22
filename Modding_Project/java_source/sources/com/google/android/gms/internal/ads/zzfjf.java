package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfjf extends zzgzh implements zzhat {
    private static final zzfjf zza;
    private static volatile zzhba zzb;
    private int zzc;
    private boolean zzd;
    private boolean zze;
    private boolean zzf;

    static {
        zzfjf zzfjfVar = new zzfjf();
        zza = zzfjfVar;
        zzgzh.zzbZ(zzfjf.class, zzfjfVar);
    }

    private zzfjf() {
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
                                    synchronized (zzfjf.class) {
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
                    return new zzfjd(null);
                }
                return new zzfjf();
            }
            return zzgzh.zzbQ(zza, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0004\u0002\u0007\u0003\u0007\u0004\u0007", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }
}
