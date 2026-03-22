package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzheu extends zzgzh implements zzhat {
    private static final zzheu zza;
    private static volatile zzhba zzb;
    private int zzc;
    private int zzd;
    private String zze = "";
    private zzgxz zzf;
    private zzgxz zzg;

    static {
        zzheu zzheuVar = new zzheu();
        zza = zzheuVar;
        zzgzh.zzbZ(zzheu.class, zzheuVar);
    }

    private zzheu() {
        zzgxz zzgxzVar = zzgxz.zzb;
        this.zzf = zzgxzVar;
        this.zzg = zzgxzVar;
    }

    public static zzhes zzc() {
        return (zzhes) zza.zzaZ();
    }

    public static /* bridge */ /* synthetic */ zzheu zzd() {
        return zza;
    }

    public static /* synthetic */ void zzf(zzheu zzheuVar, zzgxz zzgxzVar) {
        zzgxzVar.getClass();
        zzheuVar.zzc |= 4;
        zzheuVar.zzf = zzgxzVar;
    }

    public static /* synthetic */ void zzg(zzheu zzheuVar, String str) {
        zzheuVar.zzc |= 2;
        zzheuVar.zze = "image/png";
    }

    public static /* synthetic */ void zzh(zzheu zzheuVar, int i10) {
        zzheuVar.zzd = 1;
        zzheuVar.zzc = 1 | zzheuVar.zzc;
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
                                    synchronized (zzheu.class) {
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
                    return new zzhes(null);
                }
                return new zzheu();
            }
            return zzgzh.zzbQ(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzc", "zzd", zzhet.zza, "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
