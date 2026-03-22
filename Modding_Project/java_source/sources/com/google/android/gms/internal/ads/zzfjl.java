package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfjl extends zzgzh implements zzhat {
    private static final zzfjl zza;
    private static volatile zzhba zzb;
    private long zzc;
    private long zzd;
    private zzgzt zze = zzgzh.zzbK();

    static {
        zzfjl zzfjlVar = new zzfjl();
        zza = zzfjlVar;
        zzgzh.zzbZ(zzfjl.class, zzfjlVar);
    }

    private zzfjl() {
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
                                    synchronized (zzfjl.class) {
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
                    return new zzfjj(null);
                }
                return new zzfjl();
            }
            return zzgzh.zzbQ(zza, "\u0004\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0002\u0002\u0002\u0003Ț", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }
}
