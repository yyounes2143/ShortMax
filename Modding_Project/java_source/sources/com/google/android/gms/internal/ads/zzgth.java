package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgth extends zzgzh implements zzhat {
    private static final zzgth zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;

    static {
        zzgth zzgthVar = new zzgth();
        zza = zzgthVar;
        zzgzh.zzbZ(zzgth.class, zzgthVar);
    }

    private zzgth() {
    }

    public static zzgtf zzc() {
        return (zzgtf) zza.zzaZ();
    }

    public static zzgth zzf(zzgxz zzgxzVar, zzgyr zzgyrVar) throws zzgzw {
        return (zzgth) zzgzh.zzbr(zza, zzgxzVar, zzgyrVar);
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
                                    synchronized (zzgth.class) {
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
                    return new zzgtf(null);
                }
                return new zzgth();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zzd", "zzc"});
        }
        return (byte) 1;
    }
}
