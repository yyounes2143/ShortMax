package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgus extends zzgzh implements zzhat {
    private static final zzgus zza;
    private static volatile zzhba zzb;
    private int zzc;
    private zzgzt zzd = zzgzh.zzbK();

    static {
        zzgus zzgusVar = new zzgus();
        zza = zzgusVar;
        zzgzh.zzbZ(zzgus.class, zzgusVar);
    }

    private zzgus() {
    }

    public static zzguo zza() {
        return (zzguo) zza.zzaZ();
    }

    public static /* bridge */ /* synthetic */ zzgus zzb() {
        return zza;
    }

    public static /* synthetic */ void zzc(zzgus zzgusVar, zzguq zzguqVar) {
        zzguqVar.getClass();
        zzgzt zzgztVar = zzgusVar.zzd;
        if (!zzgztVar.zzc()) {
            zzgusVar.zzd = zzgzh.zzbL(zzgztVar);
        }
        zzgusVar.zzd.add(zzguqVar);
    }

    public static /* synthetic */ void zzd(zzgus zzgusVar, int i10) {
        zzgusVar.zzc = i10;
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
                                    synchronized (zzgus.class) {
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
                    return new zzguo(null);
                }
                return new zzgus();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzc", "zzd", zzguq.class});
        }
        return (byte) 1;
    }
}
