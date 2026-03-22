package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzauh extends zzgzh implements zzhat {
    private static final zzauh zza;
    private static volatile zzhba zzb;
    private int zzc;
    private zzgzt zzd = zzgzh.zzbK();
    private zzgxz zze = zzgxz.zzb;
    private int zzf = 1;
    private int zzg = 1;

    static {
        zzauh zzauhVar = new zzauh();
        zza = zzauhVar;
        zzgzh.zzbZ(zzauh.class, zzauhVar);
    }

    private zzauh() {
    }

    public static zzaug zza() {
        return (zzaug) zza.zzaZ();
    }

    public static /* synthetic */ void zzc(zzauh zzauhVar, zzgxz zzgxzVar) {
        zzgzt zzgztVar = zzauhVar.zzd;
        if (!zzgztVar.zzc()) {
            zzauhVar.zzd = zzgzh.zzbL(zzgztVar);
        }
        zzauhVar.zzd.add(zzgxzVar);
    }

    public static /* synthetic */ void zzd(zzauh zzauhVar, zzgxz zzgxzVar) {
        zzauhVar.zzc |= 1;
        zzauhVar.zze = zzgxzVar;
    }

    public static /* synthetic */ void zzf(zzauh zzauhVar, int i10) {
        zzauhVar.zzg = i10 - 1;
        zzauhVar.zzc |= 4;
    }

    public static /* synthetic */ void zzg(zzauh zzauhVar, int i10) {
        zzauhVar.zzf = 4;
        zzauhVar.zzc |= 2;
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
                                    synchronized (zzauh.class) {
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
                    return new zzaug(null);
                }
                return new zzauh();
            }
            return zzgzh.zzbQ(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002ည\u0000\u0003᠌\u0001\u0004᠌\u0002", new Object[]{"zzc", "zzd", "zze", "zzf", zzaub.zza, "zzg", zzatx.zza});
        }
        return (byte) 1;
    }
}
