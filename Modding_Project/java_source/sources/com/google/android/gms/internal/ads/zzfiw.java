package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfiw extends zzgzh implements zzhat {
    private static final zzfiw zza;
    private static volatile zzhba zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private boolean zzh;
    private String zzc = "";
    private String zzg = "";

    static {
        zzfiw zzfiwVar = new zzfiw();
        zza = zzfiwVar;
        zzgzh.zzbZ(zzfiw.class, zzfiwVar);
    }

    private zzfiw() {
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
                                    synchronized (zzfiw.class) {
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
                    return new zzfiu(null);
                }
                return new zzfiw();
            }
            return zzgzh.zzbQ(zza, "\u0004\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001Ȉ\u0002\u0004\u0003\u0004\u0004\u0007\u0005Ȉ\u0006\u0007", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        return (byte) 1;
    }
}
