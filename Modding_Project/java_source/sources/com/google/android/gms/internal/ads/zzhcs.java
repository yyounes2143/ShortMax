package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhcs extends zzgzh implements zzhat {
    private static final zzhcs zza;
    private static volatile zzhba zzb;
    private zzgzp zzc = zzgzh.zzbG();
    private zzgzp zzd = zzgzh.zzbG();

    static {
        zzhcs zzhcsVar = new zzhcs();
        zza = zzhcsVar;
        zzgzh.zzbZ(zzhcs.class, zzhcsVar);
    }

    private zzhcs() {
    }

    public static zzhcs zzd(byte[] bArr, zzgyr zzgyrVar) throws zzgzw {
        return (zzhcs) zzgzh.zzbx(zza, bArr, zzgyrVar);
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
                                    synchronized (zzhcs.class) {
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
                    return new zzhcr(null);
                }
                return new zzhcs();
            }
            return zzgzh.zzbQ(zza, "\u0004\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0002\u0000\u0001\u0016\u0003\u0016", new Object[]{"zzc", "zzd"});
        }
        return (byte) 1;
    }
}
