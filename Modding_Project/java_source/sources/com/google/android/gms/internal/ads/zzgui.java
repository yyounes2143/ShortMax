package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@Deprecated
/* loaded from: classes4.dex */
public final class zzgui extends zzgzh implements zzhat {
    private static final zzgui zza;
    private static volatile zzhba zzb;
    private int zze;
    private boolean zzf;
    private String zzc = "";
    private String zzd = "";
    private String zzg = "";

    static {
        zzgui zzguiVar = new zzgui();
        zza = zzguiVar;
        zzgzh.zzbZ(zzgui.class, zzguiVar);
    }

    private zzgui() {
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
                                    synchronized (zzgui.class) {
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
                    return new zzgug(null);
                }
                return new zzgui();
            }
            return zzgzh.zzbQ(zza, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
