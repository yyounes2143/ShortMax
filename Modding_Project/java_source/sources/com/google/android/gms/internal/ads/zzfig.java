package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfig extends zzgzh implements zzhat {
    private static final zzfig zza;
    private static volatile zzhba zzb;
    private zzgzt zzc = zzgzh.zzbK();

    static {
        zzfig zzfigVar = new zzfig();
        zza = zzfigVar;
        zzgzh.zzbZ(zzfig.class, zzfigVar);
    }

    private zzfig() {
    }

    public static zzfic zzb() {
        return (zzfic) zza.zzaZ();
    }

    public static /* bridge */ /* synthetic */ zzfig zzc() {
        return zza;
    }

    public static /* synthetic */ void zzd(zzfig zzfigVar, zzfie zzfieVar) {
        zzfieVar.getClass();
        zzgzt zzgztVar = zzfigVar.zzc;
        if (!zzgztVar.zzc()) {
            zzfigVar.zzc = zzgzh.zzbL(zzgztVar);
        }
        zzfigVar.zzc.add(zzfieVar);
    }

    public static /* synthetic */ void zzf(zzfig zzfigVar) {
        zzfigVar.zzc = zzgzh.zzbK();
    }

    public final int zza() {
        return this.zzc.size();
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
                                    synchronized (zzfig.class) {
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
                    return new zzfic(null);
                }
                return new zzfig();
            }
            return zzgzh.zzbQ(zza, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", zzfie.class});
        }
        return (byte) 1;
    }
}
