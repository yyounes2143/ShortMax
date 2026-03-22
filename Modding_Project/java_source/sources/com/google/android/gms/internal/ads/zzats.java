package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzats extends zzgzh implements zzhat {
    private static final zzats zza;
    private static volatile zzhba zzb;
    private int zzc;
    private long zzd;
    private int zze;
    private boolean zzf;
    private long zzh;
    private boolean zzi;
    private int zzk;
    private int zzl;
    private int zzm;
    private zzgzp zzg = zzgzh.zzbG();
    private zzgzt zzj = zzgzh.zzbK();

    static {
        zzats zzatsVar = new zzats();
        zza = zzatsVar;
        zzgzh.zzbZ(zzats.class, zzatsVar);
    }

    private zzats() {
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
                                    synchronized (zzats.class) {
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
                    return new zzatr(null);
                }
                return new zzats();
            }
            return zzgzh.zzbQ(zza, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0002\u0000\u0001ဂ\u0000\u0002င\u0001\u0003ဇ\u0002\u0004\u0016\u0005ဃ\u0003\u0006ဇ\u0004\u0007\u001b\b᠌\u0005\t᠌\u0006\n᠌\u0007", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", zzatw.class, "zzk", zzfus.zza(), "zzl", zzhcq.zza(), "zzm", zzhco.zza()});
        }
        return (byte) 1;
    }
}
