package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhdm extends zzgzh implements zzhat {
    private static final zzhdm zza;
    private static volatile zzhba zzb;
    private int zzc;
    private String zzd = "";

    static {
        zzhdm zzhdmVar = new zzhdm();
        zza = zzhdmVar;
        zzgzh.zzbZ(zzhdm.class, zzhdmVar);
    }

    private zzhdm() {
    }

    public static zzhdl zzc() {
        return (zzhdl) zza.zzaZ();
    }

    public static /* bridge */ /* synthetic */ zzhdm zzd() {
        return zza;
    }

    public static /* synthetic */ void zzf(zzhdm zzhdmVar, String str) {
        zzhdmVar.zzc |= 1;
        zzhdmVar.zzd = str;
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
                                    synchronized (zzhdm.class) {
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
                    return new zzhdl(null);
                }
                return new zzhdm();
            }
            return zzgzh.zzbQ(zza, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzc", "zzd"});
        }
        return (byte) 1;
    }
}
