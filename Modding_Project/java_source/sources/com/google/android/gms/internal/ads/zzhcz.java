package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhcz extends zzgzh implements zzhat {
    private static final zzhcz zza;
    private static volatile zzhba zzb;
    private zzgzt zzc = zzgzh.zzbK();

    static {
        zzhcz zzhczVar = new zzhcz();
        zza = zzhczVar;
        zzgzh.zzbZ(zzhcz.class, zzhczVar);
    }

    private zzhcz() {
    }

    public static zzhcy zzc() {
        return (zzhcy) zza.zzaZ();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zzf(zzhcz zzhczVar, zzhcx zzhcxVar) {
        zzhcxVar.getClass();
        zzgzt zzgztVar = zzhczVar.zzc;
        if (!zzgztVar.zzc()) {
            zzhczVar.zzc = zzgzh.zzbL(zzgztVar);
        }
        zzhczVar.zzc.add(zzhcxVar);
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
                                    synchronized (zzhcz.class) {
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
                    return new zzhcy(null);
                }
                return new zzhcz();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", zzhcx.class});
        }
        return (byte) 1;
    }
}
