package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@Deprecated
/* loaded from: classes4.dex */
public final class zzgvi extends zzgzh implements zzhat {
    public static final /* synthetic */ int zza = 0;
    private static final zzgvi zzb;
    private static volatile zzhba zzc;
    private String zzd = "";
    private zzgzt zze = zzgzh.zzbK();

    static {
        zzgvi zzgviVar = new zzgvi();
        zzb = zzgviVar;
        zzgzh.zzbZ(zzgvi.class, zzgviVar);
    }

    private zzgvi() {
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
                                zzhba zzhbaVar = zzc;
                                if (zzhbaVar == null) {
                                    synchronized (zzgvi.class) {
                                        try {
                                            zzhbaVar = zzc;
                                            if (zzhbaVar == null) {
                                                zzhbaVar = new zzgzc(zzb);
                                                zzc = zzhbaVar;
                                            }
                                        } finally {
                                        }
                                    }
                                }
                                return zzhbaVar;
                            }
                            throw null;
                        }
                        return zzb;
                    }
                    return new zzgvg(null);
                }
                return new zzgvi();
            }
            return zzgzh.zzbQ(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzd", "zze", zzgui.class});
        }
        return (byte) 1;
    }
}
