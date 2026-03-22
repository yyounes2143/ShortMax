package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfie extends zzgzh implements zzhat {
    private static final zzfie zza;
    private static volatile zzhba zzb;
    private int zzc;
    private zzfib zzd;

    static {
        zzfie zzfieVar = new zzfie();
        zza = zzfieVar;
        zzgzh.zzbZ(zzfie.class, zzfieVar);
    }

    private zzfie() {
    }

    public static zzfid zza() {
        return (zzfid) zza.zzaZ();
    }

    public static /* bridge */ /* synthetic */ zzfie zzb() {
        return zza;
    }

    public static /* synthetic */ void zzc(zzfie zzfieVar, zzfib zzfibVar) {
        zzfibVar.getClass();
        zzfieVar.zzd = zzfibVar;
        zzfieVar.zzc |= 1;
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
                                    synchronized (zzfie.class) {
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
                    return new zzfid(null);
                }
                return new zzfie();
            }
            return zzgzh.zzbQ(zza, "\u0004\u0001\u0000\u0001\u0006\u0006\u0001\u0000\u0000\u0000\u0006ဉ\u0000", new Object[]{"zzc", "zzd"});
        }
        return (byte) 1;
    }
}
