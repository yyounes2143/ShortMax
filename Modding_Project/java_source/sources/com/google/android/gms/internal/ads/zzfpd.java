package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfpd extends zzgzh implements zzhat {
    private static final zzfpd zza;
    private static volatile zzhba zzb;
    private int zzc;
    private zzgzp zzd = zzgzh.zzbG();
    private String zze = "";
    private String zzf = "";
    private String zzg = "";

    static {
        zzfpd zzfpdVar = new zzfpd();
        zza = zzfpdVar;
        zzgzh.zzbZ(zzfpd.class, zzfpdVar);
    }

    private zzfpd() {
    }

    public static zzfpb zza() {
        return (zzfpb) zza.zzaZ();
    }

    public static /* synthetic */ void zzc(zzfpd zzfpdVar, String str) {
        str.getClass();
        zzfpdVar.zzc |= 1;
        zzfpdVar.zze = str;
    }

    public static /* synthetic */ void zzd(zzfpd zzfpdVar, int i10) {
        zzgzp zzgzpVar = zzfpdVar.zzd;
        if (!zzgzpVar.zzc()) {
            zzfpdVar.zzd = zzgzh.zzbH(zzgzpVar);
        }
        zzfpdVar.zzd.zzi(2);
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
                                    synchronized (zzfpd.class) {
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
                    return new zzfpb(null);
                }
                return new zzfpd();
            }
            return zzgzh.zzbQ(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001ࠞ\u0002ဈ\u0000\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zzc", "zzd", zzfpa.zza, "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
