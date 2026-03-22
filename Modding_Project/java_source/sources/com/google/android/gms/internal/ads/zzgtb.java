package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgtb extends zzgzh implements zzhat {
    private static final zzgtb zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;

    static {
        zzgtb zzgtbVar = new zzgtb();
        zza = zzgtbVar;
        zzgzh.zzbZ(zzgtb.class, zzgtbVar);
    }

    private zzgtb() {
    }

    public static zzgsz zzc() {
        return (zzgsz) zza.zzaZ();
    }

    public static zzgtb zzf(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzgtb) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
    }

    public final int zza() {
        return this.zzc;
    }

    public final int zzb() {
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
                                    synchronized (zzgtb.class) {
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
                    return new zzgsz(null);
                }
                return new zzgtb();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b", new Object[]{"zzc", "zzd"});
        }
        return (byte) 1;
    }
}
