package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfph extends zzgzh implements zzhat {
    private static final zzfph zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private String zze = "";
    private String zzf = "";
    private zzfpd zzg;

    static {
        zzfph zzfphVar = new zzfph();
        zza = zzfphVar;
        zzgzh.zzbZ(zzfph.class, zzfphVar);
    }

    private zzfph() {
    }

    public static zzfpe zza() {
        return (zzfpe) zza.zzaZ();
    }

    public static /* bridge */ /* synthetic */ zzfph zzb() {
        return zza;
    }

    public static /* synthetic */ void zzc(zzfph zzfphVar, String str) {
        str.getClass();
        zzfphVar.zzc |= 2;
        zzfphVar.zze = str;
    }

    public static /* synthetic */ void zzd(zzfph zzfphVar, zzfpd zzfpdVar) {
        zzfpdVar.getClass();
        zzfphVar.zzg = zzfpdVar;
        zzfphVar.zzc |= 8;
    }

    public static /* synthetic */ void zzf(zzfph zzfphVar, int i10) {
        zzfphVar.zzd = 1;
        zzfphVar.zzc = 1 | zzfphVar.zzc;
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
                                    synchronized (zzfph.class) {
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
                    return new zzfpe(null);
                }
                return new zzfph();
            }
            return zzgzh.zzbQ(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zzc", "zzd", zzfpf.zza, "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
